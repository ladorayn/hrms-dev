// Hardcoded JSON structure to mimic the successful API response
// for a performance assessment, based on user-provided images.

const Map<String, dynamic> mockSuperAssessDetail = {
  "status": "success",
  "message": "Supervisor assessment retrieved successfully",
  "data": {
    "id": 4,
    "user": {
      "id": 1,
      "name": "Superadmin ESS",
      "email": "superadmin@example.com",
      "phone": null,
      "employee_id": 1,
      "employee_code": "00000001",
      "avatar_url": null
    },
    "employee_start_date": "2026-04-21",
    "current_position": {
      "id": 1,
      "name": "Junior Foreman Production",
      "description": "Entry-level foreman in production.",
      "status": "1",
      "created_at": "2025-09-10T15:26:13.000000Z",
      "updated_at": "2025-09-10T15:26:13.000000Z",
      "deleted_at": null,
      "is_root": false
    },
    "current_level": {
      "id": 2,
      "name": "Senior Staff",
      "description": "Experienced staff with more responsibilities.",
      "created_at": "2025-09-10T15:26:13.000000Z",
      "updated_at": "2025-09-10T15:26:13.000000Z",
      "deleted_at": null,
      "level": 0
    },
    "current_department": {"id": 3, "name": "Finance"},
    "target_position": {
      "id": 1,
      "name": "Junior Foreman Production",
      "description": "Entry-level foreman in production.",
      "status": "1",
      "created_at": "2025-09-10T15:26:13.000000Z",
      "updated_at": "2025-09-10T15:26:13.000000Z",
      "deleted_at": null,
      "is_root": false
    },
    "target_level": {
      "id": 1,
      "name": "CEOs",
      "description": "Leader of all department",
      "created_at": "2025-09-10T15:26:13.000000Z",
      "updated_at": "2025-12-01T19:05:33.000000Z",
      "deleted_at": null,
      "level": 2
    },
    "status": 4,
    "status_label": "Completed",
    "schedule": {
      "id": 15,
      "date": "2025-12-02T00:00:00.000000Z",
      "start_time": "10:00:00",
      "end_time": "10:30:00",
      "participants": [
        {
          "id": 2,
          "name": "John Doe",
          "email": "john.doe@example.com",
          "phone": null,
          "employee_id": 2,
          "employee_code": "01010101",
          "avatar_url": null
        },
        {
          "id": 1,
          "name": "Superadmin ESS",
          "email": "superadmin@example.com",
          "phone": null,
          "employee_id": 1,
          "employee_code": "00000001",
          "avatar_url": null
        }
      ],
      "notes": "jangan telat ya",
      "created_at": "2025-12-02 07:05:28",
      "updated_at": "2025-12-02 07:05:38"
    },
    "assessors": [
      {
        "id": 9,
        "supervisor_assessment_id": 4,
        "user_id": 1,
        "score": null,
        "notes": null,
        "created_at": "2025-11-28T16:38:56.000000Z",
        "updated_at": "2025-12-02T17:36:25.000000Z",
        "status": 2,
        "status_label": "Completed"
      }
    ],
    "form": {"id": 14, "name": "Form Supervisor Ases"},
    "final_submission": {
      "id": 90,
      "form_id": 14,
      "submitted_by": 1,
      "formable_type": "App\\Models\\SupervisorAssessment",
      "formable_id": 4,
      "data": {
        "type": "merging_answers",
        "fields": [
          {
            "value": 8,
            "field_id": 86,
            "assessor_id": 9,
            "additional_data": ["ok"],
            "form_submission_id": 89
          },
          {
            "value": 7,
            "field_id": 87,
            "assessor_id": 9,
            "additional_data": null,
            "form_submission_id": 89
          },
          {
            "value": "ini paragrf",
            "field_id": 88,
            "assessor_id": 9,
            "additional_data": null,
            "form_submission_id": 89
          },
          {
            "value": "ini paragrf 2",
            "field_id": 89,
            "assessor_id": 9,
            "additional_data": null,
            "form_submission_id": 89
          }
        ],
        "sources": [
          {"form_submission_id": 89}
        ],
        "merged_at": "2025-12-02T17:47:45.222438Z",
        "merged_by": "system"
      },
      "created_at": "2025-12-02T17:44:47.000000Z",
      "updated_at": "2025-12-02T17:47:45.000000Z",
      "validated_for": null
    },
    "created_at": "2025-11-28 16:38:56",
    "updated_at": "2025-12-02 17:07:41"
  }
};

const Map<String, dynamic> mockFacesProfile = {
  "status": "success",
  "message": "Profile fetched successfully",
  "data": {
    "name": "Super Admin",
    "email": "superadmin@example.com",
    "id": 1,
    "created_at": "2025-12-01T10:27:51",
    "updated_at": "2025-12-01T10:28:14",
    "faces": [
      {
        "id": 1,
        "user_id": 1,
        "is_active": true,
        "quality_score": 79.37,
        "source": 0,
        "created_by": 1,
        "image_path": "uploads/a10f366a-fbe0-4d61-ae1b-7a293b825179.png",
        "image_url":
            "http://127.0.0.1:8000/uploads/a10f366a-fbe0-4d61-ae1b-7a293b825179.png",
        "created_at": null,
        "updated_at": null
      },
      {
        "id": 2,
        "user_id": 1,
        "is_active": true,
        "quality_score": 79.37,
        "source": 0,
        "created_by": 1,
        "image_path": "uploads/7327b08c-0bdd-483a-8b70-6ff5f3d9e31f.png",
        "image_url":
            "http://127.0.0.1:8000/uploads/7327b08c-0bdd-483a-8b70-6ff5f3d9e31f.png",
        "created_at": null,
        "updated_at": null
      }
    ]
  }
};

const Map<String, dynamic> mockVerifyFace = {
  "status": "success",
  "message": "Photo verification completed",
  "data": {
    "is_match": false,
    "similarity_score": 0.0,
    "threshold": 0.6,
    "message":
        "Face verification failed. Similarity score: 0.0000 (threshold: 0.6)",
    "matched_embedding_id": 1
  }
};

const Map<String, dynamic> mockUploadFace = {
  "status": "success",
  "message": "Photo uploaded successfully",
  "data": {
    "photo_path": "uploads/7327b08c-0bdd-483a-8b70-6ff5f3d9e31f.png",
    "message": "Photo uploaded successfully"
  }
};

const Map<String, dynamic> mockLocation = {
  "status": "success",
  "message": "Location validation performed",
  "data": {"is_valid": true, "distance": 4129086.1650573094, "max_radius": 1000}
};

const Map<String, dynamic> mockSupervisorAssesstments = {
  "status": "success",
  "message": "Supervisor assessments retrieved successfully",
  "data": [
    {
      "id": 2,
      "user": {
        "id": 1,
        "name": "Superadmin ESS",
        "email": "superadmin@example.com",
        "phone": null,
        "employee_id": 1,
        "employee_code": "00000001",
        "avatar_url": null
      },
      "current_position": {
        "id": 1,
        "name": "Junior Foreman Production",
        "description": "Entry-level foreman in production.",
        "status": "1",
        "created_at": "2025-09-10T15:26:13.000000Z",
        "updated_at": "2025-09-10T15:26:13.000000Z",
        "deleted_at": null,
        "is_root": false
      },
      "current_level": {
        "id": 2,
        "name": "Senior Staff",
        "description": "Experienced staff with more responsibilities.",
        "created_at": "2025-09-10T15:26:13.000000Z",
        "updated_at": "2025-09-10T15:26:13.000000Z",
        "deleted_at": null
      },
      "target_position": {
        "id": 1,
        "name": "Junior Foreman Production",
        "description": "Entry-level foreman in production.",
        "status": "1",
        "created_at": "2025-09-10T15:26:13.000000Z",
        "updated_at": "2025-09-10T15:26:13.000000Z",
        "deleted_at": null,
        "is_root": false
      },
      "target_level": {
        "id": 1,
        "name": "Staff",
        "description": "Entry-level staff position.",
        "created_at": "2025-09-10T15:26:13.000000Z",
        "updated_at": "2025-09-10T15:26:13.000000Z",
        "deleted_at": null
      },
      "status": 0,
      "status_label": "Not Started",
      "schedule": null,
      "form": {"id": 14, "name": "Form Supervisor Ases"},
      "created_at": "2025-11-28 16:13:39",
      "updated_at": "2025-11-28 16:28:34"
    }
  ],
  "pagination": {
    "current_page": 1,
    "per_page": 15,
    "total": 1,
    "last_page": 1,
    "from": 1,
    "to": 1,
    "first": "http://127.0.0.1:8000/api/ess/supervisor-assessments?page=1",
    "last": "http://127.0.0.1:8000/api/ess/supervisor-assessments?page=1",
    "prev": null,
    "next": null
  }
};

const Map<String, dynamic> mockAnswer = {
  "status": "success",
  "message": "Submissions fetched successfully",
  "data": [
    {
      "id": 15,
      "form_id": 1,
      "submitted_by": 18,
      "formable_type": "App\\Models\\EmployeeSelfAssessment",
      "formable_id": 1,
      "data": {
        "fields": [
          {
            "score": 0.8,
            "value": "1",
            "field_id": 121,
            "field_group_id": 101,
            "additional_data": {"notes": null}
          },
          {
            "score": 0.9,
            "value": "1",
            "field_id": 122,
            "field_group_id": 101,
            "additional_data": {"notes": null}
          },
          {
            "score": 0.7,
            "value": "1",
            "field_id": 123,
            "field_group_id": 102,
            "additional_data": {"notes": null}
          },
          {
            "score": 0.85,
            "value": "1",
            "field_id": 124,
            "field_group_id": 102,
            "additional_data": {"notes": null}
          },
          {
            "score": 0,
            "value": ["Better career opportunity (promotion & role expansion)"],
            "field_id": 120,
            "field_group_id": 103,
            "additional_data": [
              "Better career opportunity (promotion & role expansion)"
            ]
          },
          {
            "score": 0,
            "value": "A. Benar",
            "field_id": 130,
            "field_group_id": 103,
            "additional_data": null
          },
          {
            "score": 0,
            "value": "Visa",
            "field_id": 131,
            "field_group_id": 103,
            "additional_data": null
          },
          {
            "score": 0,
            "value": "asdas",
            "field_id": 125,
            "field_group_id": 103,
            "additional_data": null
          },
          {
            "score": 0,
            "value": "asdasd",
            "field_id": 126,
            "field_group_id": 103,
            "additional_data": null
          },
          {
            "score": 0,
            "value": "asdasd",
            "field_id": 127,
            "field_group_id": 103,
            "additional_data": null
          },
          {
            "score": 0,
            "value": "adasd",
            "field_id": 128,
            "field_group_id": 103,
            "additional_data": null
          },
          {
            "score": 0,
            "value": "sadsad",
            "field_id": 129,
            "field_group_id": 103,
            "additional_data": null
          }
        ],
        "groups": [
          {"name": "Group A", "score": 1.7, "field_group_id": 101},
          {"name": "Group B", "score": 1.55, "field_group_id": 102},
          {"name": "Group C - Notes", "score": 0, "field_group_id": 103}
        ],
        "total_score": 3.25
      },
      "created_at": "2025-12-01T07:22:33.000000Z",
      "updated_at": "2025-12-01T07:22:33.000000Z",
      "validated_for": null
    }
  ]
};

const Map<String, dynamic> mockFormFieldsData = {
  "status": "success",
  "message": "Fields fetched successfully",
  "data": [
    // --- Range Fields (Order 1-7) ---
    {
      "id": 18,
      "form_id": 1,
      "label": "Disiplin waktu",
      "type": "range",
      "options": {"min": 1, "max": 5},
      "is_required": true,
      "order": 1,
      "description": "Datang tepat waktu dan mematuhi jam kerja",
      "metadata": {"is_note": false}
    },
    {
      "id": 19,
      "form_id": 1,
      "label": "Kerja sama tim",
      "type": "range",
      "options": {"min": 1, "max": 5},
      "is_required": true,
      "order": 2,
      "description": "Kooperatif dan membantu rekan kerja",
      "metadata": {"is_note": false}
    },
    {
      "id": 20,
      "form_id": 1,
      "label": "Tanggung jawab pekerjaan",
      "type": "range",
      "options": {"min": 1, "max": 5},
      "is_required": true,
      "order": 3,
      "description": "Menyelesaikan tugas tanpa pengawasan berlebihan",
      "metadata": {"is_note": false}
    },
    {
      "id": 21,
      "form_id": 1,
      "label": "Kepedulian terhadap kebersihan area",
      "type": "range",
      "options": {"min": 1, "max": 5},
      "is_required": true,
      "order": 4,
      "description": "Menjaga area kerja tetap bersih dan rapi",
      "metadata": {"is_note": false}
    },
    {
      "id": 22,
      "form_id": 1,
      "label": "Menjalankan mesin pemotong kain",
      "type": "range",
      "options": {"min": 1, "max": 5},
      "is_required": true,
      "order": 5,
      "description": "Mampu mengoperasikan dan mengatur mesin pemotong",
      "metadata": {"is_note": false}
    },
    {
      "id": 23,
      "form_id": 1,
      "label": "Memahami SOP produksi",
      "type": "range",
      "options": {"min": 1, "max": 5},
      "is_required": true,
      "order": 6,
      "description": "Mengetahui dan mematuhi SOP dalam proses pembuatan tas",
      "metadata": {"is_note": false}
    },
    {
      "id": 25,
      "form_id": 1,
      "label": "Quality Control dasar",
      "type": "range",
      "options": {"min": 1, "max": 5},
      "is_required": true,
      "order": 7,
      "description": "Bisa mendeteksi cacat kain atau jahitan dasar",
      "metadata": {"is_note": false}
    },

    // --- Text/Text Area Fields (Order 8-9) ---
    {
      "id": 27,
      "form_id": 1,
      "label": "Apa pencapaian terbesar Anda selama 3 bulan terakhir?",
      "type": "text",
      // Using 'text' for simplicity, 'textarea' might be more appropriate in a real app
      "options": null,
      "is_required": true,
      "order": 8,
      "description": null,
      // Question is the label, no separate description
      "metadata": null
    },
    {
      "id": 28, // Changed to 28 to fix duplicate ID
      "form_id": 1,
      "label": "Apa tantangan atau kendala utama yang Anda hadapi?",
      "type": "text",
      "options": null,
      "is_required": true,
      "order": 9,
      "description": null,
      "metadata": null
    },
    {
      "id": 29, // Changed to 28 to fix duplicate ID
      "form_id": 1,
      "label": "Apa yang ingin Anda tingkatkan ke depannya?",
      "type": "text",
      "options": null,
      "is_required": true,
      "order": 9,
      "description": null,
      "metadata": null
    }
  ]
};

const Map<String, dynamic> mockOKRList = {
  "status": "success",
  "message": "Successfully fetch okr list",
  "data": [
    {
      "id": 1,
      "period": "Q4 2025",
      "status": "Not Started",
      "form_id": 1,
      "due_date": "June 18, 2025",
    },
    {
      "id": 2,
      "period": "Q3 2025",
      "status": "Not Started",
      "form_id": 1,
      "due_date": "June 18, 2025",
    },
    {
      "id": 3,
      "period": "Q2 2025",
      "status": "Not Started",
      "form_id": 1,
      "due_date": "June 18, 2025",
    }
  ]
};

final mockOKRItems = [
  {
    "title": "Penilaian Kompetensi Teknis",
    "okr": [
      {
        "time": "1h",
        "desc": "Mengurangi waktu henti mesin per minggu hingga di bawah 2 jam",
        "status": 1,
        "memberCount": 7,
        "progress": 10.toDouble(),
      },
      {
        "time": "1h",
        "desc":
            "Meningkatkan rasio output per shift sebesar 15% dibandingkan Q2",
        "status": 2,
        "memberCount": 4,
        "progress": 40.toDouble(),
      },
      {
        "time": "1h",
        "desc": "Menyelesaikan pelatihan 5R untuk semua operator lini 1 dan 2",
        "status": 3,
        "memberCount": 2,
        "progress": 86.toDouble(),
      }
    ]
  },
  {
    "title": "Menurunkan jumlah cacat produk (defect rate)",
    "okr": [
      {
        "time": "1h",
        "desc": "Mengurangi waktu henti mesin per minggu hingga di bawah 2 jam",
        "status": 1,
        "memberCount": 7,
        "progress": 10.toDouble(),
      },
      {
        "time": "1h",
        "desc":
            "Meningkatkan rasio output per shift sebesar 15% dibandingkan Q2",
        "status": 2,
        "memberCount": 4,
        "progress": 40.toDouble(),
      },
      {
        "time": "1h",
        "desc": "Menyelesaikan pelatihan 5R untuk semua operator lini 1 dan 2",
        "status": 3,
        "memberCount": 2,
        "progress": 86.toDouble(),
      }
    ]
  }
];
