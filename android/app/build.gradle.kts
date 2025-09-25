plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

// Add this import statement at the top
import org.gradle.api.JavaVersion

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

            defaultConfig {
                applicationId = "com.okjob.hrms.hrms_mobile"
                minSdk = 23
                targetSdk = flutter.targetSdkVersion
                versionCode = flutter.versionCode
                versionName = flutter.versionName
            }

            buildTypes {
                release {
                    signingConfig = signingConfigs.getByName("debug")
                }
            }
        }

flutter {
    source = "../.."
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")
}
