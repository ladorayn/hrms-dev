plugins {
    id("com.android.application")
    id("com.google.gms.google-services")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

import org.gradle.api.JavaVersion
        import java.util.Properties

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(keystorePropertiesFile.inputStream())
}

android {
    namespace = "com.okjob.hrms.hrms_mobile"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_1_8.toString()
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String?
            keyPassword = keystoreProperties["keyPassword"] as String?
            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
            storePassword = keystoreProperties["storePassword"] as String?
        }
    }

    defaultConfig {
        applicationId = "com.okjob.hrms.hrms_mobile"
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    flavorDimensions += "version"
    productFlavors {
        create("dev") {
            dimension = "version"
            applicationId = "com.okjob.hrms.hrms_mobile"
            applicationIdSuffix = ".dev"
            versionNameSuffix = "-dev"
        }
        create("prod") {
            dimension = "version"
            applicationId = "com.okejob.hrms.hrms_mobile"
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = false
            isShrinkResources = false
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation("com.google.firebase:firebase-messaging")
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")
}

// Workaround: dev/prod flavors both run compileFlutterBuild* tasks that write the
// same gen-l10n files under lib/application/l10n (flutter/flutter#163591).
val flavorsToCheck = listOf("prod")
val dependsOnFlavors = listOf("dev")

android.buildTypes.forEach { buildType ->
    val buildTypeName = buildType.name.replaceFirstChar { it.uppercaseChar() }

    tasks.matching {
        it.name.startsWith("compileFlutterBuild") &&
            flavorsToCheck.any { flavor -> it.name.contains(flavor, ignoreCase = true) } &&
            it.name.endsWith(buildTypeName)
    }.configureEach {
        dependsOn(
            tasks.matching {
                it.name.startsWith("compileFlutterBuild") &&
                    dependsOnFlavors.any { flavor -> it.name.contains(flavor, ignoreCase = true) } &&
                    it.name.endsWith(buildTypeName)
            },
        )
    }
}