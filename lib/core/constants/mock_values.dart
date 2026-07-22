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

const Map<String, dynamic> mockNotificationInbox = {
  "data": [
    {
      "id": "859e8717-6b5b-4914-9b56-856e5701a114",
      "notifiable_id": 18,
      "data": {
        "title": "You’re Assigned to Validate Handover",
        "message":
            "You’ve been assigned to receive work and documents from Irfan Hamid. Please validate to complete the handover process.",
        "code": "VALIDATE_HANDOVER",
        "data": {
          "id": 4,
          "interviewer": "Irfan Hamid",
          "date": "2025-12-08",
          "start_time": "09:00:00",
          "end_time": "10:00:00"
        }
      },
      "read_at": null,
      "created_at": "2025-12-13T01:41:25.000000Z",
      "updated_at": "2025-12-13T01:41:25.000000Z"
    },
    {
      "id": "859e8717-6b5b-4914-9b56-856e5701a114",
      "notifiable_id": 18,
      "data": {
        "title": "Jadwal Exit Interview - Lado",
        "message":
            "Monday, December 8, 2025 09:00:00 - 10:00:00 dengan Irfan Hamid, Jon Snow, Norma Bechtelar, Lado. Harap hadir tepat waktu",
        "code": "EXIT_INTERVIEW_SCHEDULE",
        "data": {
          "id": "4",
          "interviewer": "Irfan Hamid",
          "date": "2025-12-08",
          "start_time": "09:00:00",
          "end_time": "10:00:00"
        }
      },
      "read_at": null,
      "created_at": "2025-12-13T01:41:25.000000Z",
      "updated_at": "2025-12-13T01:41:25.000000Z"
    },
    {
      "id": "61d9b8d1-11ee-4aab-b2f4-088aef45f394",
      "notifiable_id": 18,
      "data": {
        "title": "Perubahan Profil",
        "message":
            "Data profil Anda telah diperbarui. Lihat detail di profil Anda.",
        "code": "PROFILE_UPDATED",
        "data": {"user_id": "18", "email": "ladorayhannajib@gmail.com"}
      },
      "read_at": null,
      "created_at": "2025-12-13T10:18:19.000000Z",
      "updated_at": "2025-12-13T10:18:19.000000Z"
    },
    {
      "id": "30c39069-b01d-4885-a980-79397818ac45",
      "notifiable_id": 18,
      "data": {
        "title": "Pengajuan Cuti Terkirim",
        "message":
            "Annual Leave 2025-12-16–2025-12-19. Menunggu persetujuan approvers.",
        "code": "LEAVE_SUBMITTED",
        "data": {"user_id": "18", "leave_id": "17"}
      },
      "read_at": null,
      "created_at": "2025-12-13T10:17:13.000000Z",
      "updated_at": "2025-12-13T10:17:13.000000Z"
    },
    {
      "id": "859e8717-6b5b-4914-9b56-856e5701a114",
      "notifiable_id": 18,
      "data": {
        "title": "Jadwal Supervisor Assessment - Lado",
        "message":
            "Monday, December 8, 2025 09:00:00 - 10:00:00 dengan Irfan Hamid, Jon Snow, Norma Bechtelar, Lado. Harap hadir tepat waktu",
        "code": "SUPERVISOR_ASSESSMENT_SCHEDULE",
        "data": {
          "schedule_id": "4",
          "date": "2025-12-08",
          "start_time": "09:00:00",
          "end_time": "10:00:00"
        }
      },
      "read_at": null,
      "created_at": "2025-12-13T01:41:25.000000Z",
      "updated_at": "2025-12-13T01:41:25.000000Z"
    },
    {
      "id": "a2ae2e7e-92c1-416d-9c77-f2a31a30725f",
      "notifiable_id": 18,
      "data": {
        "title": "Pengajuan Cuti Terkirim",
        "message":
            "Annual Leave 2025-12-13–2025-12-14. Menunggu persetujuan approvers.",
        "code": "LEAVE_SUBMITTED",
        "data": {"user_id": "18", "leave_id": "16"}
      },
      "read_at": null,
      "created_at": "2025-12-11T16:12:50.000000Z",
      "updated_at": "2025-12-11T16:12:50.000000Z"
    },
    {
      "id": "d3d2c4c0-3d45-4f7c-89ab-b98d7d66e4ab",
      "notifiable_id": 18,
      "data": {
        "title": "Pengajuan Cuti Terkirim",
        "message":
            "Sick Leave 2025-12-11–2025-12-12. Menunggu persetujuan approvers.",
        "code": "LEAVE_SUBMITTED",
        "data": {"user_id": "18", "leave_id": "15"}
      },
      "read_at": null,
      "created_at": "2025-12-11T16:11:59.000000Z",
      "updated_at": "2025-12-11T16:11:59.000000Z"
    },
    {
      "id": "47790de2-e988-4a12-acfe-9ee7348d394c",
      "notifiable_id": 18,
      "data": {
        "title": "Jadwal Supervisor Assessment - Lado",
        "message":
            "Thursday, December 11, 2025 10:10:00 - 10:11:00 dengan Eka Sari, Lado. Harap hadir tepat waktu",
        "code": "SUPERVISOR_ASSESSMENT_SCHEDULE",
        "data": {
          "schedule_id": "5",
          "date": "2025-12-11",
          "start_time": "10:10:00",
          "end_time": "10:11:00"
        }
      },
      "read_at": null,
      "created_at": "2025-12-11T02:45:33.000000Z",
      "updated_at": "2025-12-11T02:45:33.000000Z"
    },
    {
      "id": "b3f5a240-15e8-4ba6-89e8-6f91b384268e",
      "notifiable_id": 18,
      "data": {
        "title": "Jadwal Supervisor Assessment - Lado",
        "message":
            "Monday, December 8, 2025 09:00:00 - 10:00:00 dengan Ahmad Sahroni, Lado. Harap hadir tepat waktu",
        "code": "SUPERVISOR_ASSESSMENT_SCHEDULE",
        "data": {
          "schedule_id": "4",
          "date": "2025-12-08",
          "start_time": "09:00:00",
          "end_time": "10:00:00"
        }
      },
      "read_at": null,
      "created_at": "2025-12-09T04:05:03.000000Z",
      "updated_at": "2025-12-09T04:05:03.000000Z"
    },
    {
      "id": "6644915d-2742-4b6a-b4ae-0eaad67387e7",
      "notifiable_id": 18,
      "data": {
        "title": "Jadwal Supervisor Assessment - Lado",
        "message":
            "Monday, December 8, 2025 09:00:00 - 10:00:00 dengan Kenny Andreas, Lado. Harap hadir tepat waktu",
        "code": "SUPERVISOR_ASSESSMENT_SCHEDULE",
        "data": {
          "schedule_id": "4",
          "date": "2025-12-08",
          "start_time": "09:00:00",
          "end_time": "10:00:00"
        }
      },
      "read_at": null,
      "created_at": "2025-12-09T04:01:44.000000Z",
      "updated_at": "2025-12-09T04:01:44.000000Z"
    },
    {
      "id": "33a92d9b-eeb7-4c4b-9235-88b787c99fa8",
      "notifiable_id": 18,
      "data": {
        "title": "Jadwal Supervisor Assessment - Lado",
        "message":
            "Monday, December 8, 2025 09:00:00 - 10:00:00 dengan Quinn Edwards, Lado. Harap hadir tepat waktu",
        "code": "SUPERVISOR_ASSESSMENT_SCHEDULE",
        "data": {
          "schedule_id": "4",
          "date": "2025-12-08",
          "start_time": "09:00:00",
          "end_time": "10:00:00"
        }
      },
      "read_at": null,
      "created_at": "2025-12-08T14:42:50.000000Z",
      "updated_at": "2025-12-08T14:42:50.000000Z"
    },
    {
      "id": "01921465-1250-4886-be1a-0512d30805de",
      "notifiable_id": 18,
      "data": {
        "title": "Perubahan Profil",
        "message":
            "Data profil Anda telah diperbarui. Lihat detail di profil Anda.",
        "code": "PROFILE_UPDATED",
        "data": {"user_id": "18", "email": "ladorayhannajib@gmail.com"}
      },
      "read_at": null,
      "created_at": "2025-12-01T15:01:16.000000Z",
      "updated_at": "2025-12-01T15:01:16.000000Z"
    }
  ],
  "links": {
    "first": "http://api.okejobhub.fun/api/v1/user/notifications?page=1",
    "last": "http://api.okejobhub.fun/api/v1/user/notifications?page=2",
    "prev": null,
    "next": "http://api.okejobhub.fun/api/v1/user/notifications?page=2"
  },
  "meta": {
    "current_page": 1,
    "from": 1,
    "last_page": 2,
    "links": [
      {"url": null, "label": "&laquo; Previous", "page": null, "active": false},
      {
        "url": "http://api.okejobhub.fun/api/v1/user/notifications?page=1",
        "label": "1",
        "page": 1,
        "active": true
      },
      {
        "url": "http://api.okejobhub.fun/api/v1/user/notifications?page=2",
        "label": "2",
        "page": 2,
        "active": false
      },
      {
        "url": "http://api.okejobhub.fun/api/v1/user/notifications?page=2",
        "label": "Next &raquo;",
        "page": 2,
        "active": false
      }
    ],
    "path": "http://api.okejobhub.fun/api/v1/user/notifications",
    "per_page": 10,
    "to": 10,
    "total": 13
  }
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
  "message": "OKR cycles fetched successfully",
  "data": [
    {
      "id": 2,
      "period": "Lorem aliqua",
      "period_year": 2024,
      "name": "Dr. Anne Olson",
      "start_date": "2025-07-31T00:00:00.000000Z",
      "end_date": "2026-07-19T00:00:00.000000Z",
      "status": 0,
      "status_label": "Draft",
      "tenant_id": 1,
      "created_by": {
        "id": 1,
        "name": "Super Admin",
        "email": "superadmin@example.com"
      },
      "created_at": "2025-12-12 15:40:44",
      "updated_at": "2025-12-12 15:40:44"
    }
  ],
  "pagination": {
    "current_page": 2,
    "per_page": 1,
    "total": 2,
    "last_page": 2,
    "from": 2,
    "to": 2,
    "first": "http://127.0.0.1:8000/api/v1/okr/cycles?page=1",
    "last": "http://127.0.0.1:8000/api/v1/okr/cycles?page=2",
    "prev": "http://127.0.0.1:8000/api/v1/okr/cycles?page=1",
    "next": null
  }
};

final mockSetTrackingValue = {
  "status": "success",
  "message": "string",
  "data": {
    "id": 0,
    "tenant_id": 0,
    "okr_cycle_id": 0,
    "okr_key_result_id": 0,
    "frequency": 0,
    "period_start": "string",
    "period_end": "string",
    "label": "string",
    "actual_value": 0,
    "target_value": 0,
    "created_at": "string",
    "updated_at": "string"
  }
};

final mockOKRTracking = {
  "status": "success",
  "message": "OKR cycle tracking fetched successfully",
  "data": {
    "id": 3,
    "title": "Achieve NPS score of 70",
    "description": "Net Promoter Score target for Q1 2025",
    "frequency": 1,
    "frequency_label": "Monthly",
    "format": 2,
    "format_label": "Percent",
    "start_value": 50,
    "current_value": 55,
    "target_value": 70,
    "status": 1,
    "status_label": "Active",
    "direction": 0,
    "direction_label": "Higher is Better",
    "aggregation": 0,
    "aggregation_label": "Latest",
    "progress": 25,
    "objective_id": 3,
    "objective": {
      "id": 3,
      "title": "pfft scarily past adolescent jaunty 3",
      "description":
          "Amissio vesco umerus vigor sit cavus appositus. Conscendo tutamen aequitas synagoga. Degero tamisium depono surculus laborum adicio vetus qui bis. Tui eius conspergo arbor tonsor abeo vehemens. Tendo solutio aurum torrens paens voluptatibus ceno acervus cresco derideo. Crudelis capillus decretum clibanus vere abeo taceo. Curvo stultus occaecati turba nesciunt totidem.",
      "progress": 0,
      "status": 0,
      "status_label": "Draft",
      "okr_cycle_id": 2,
      "tenant_id": 1,
      "created_at": "2025-12-19 13:12:42",
      "updated_at": "2025-12-19 13:12:42"
    },
    "job_position_id": 1,
    "job_position": {"id": 1, "name": "Junior Foreman Production"},
    "job_level_id": 1,
    "job_level": {"id": 1, "name": "CEOs"},
    "tenant_id": 1,
    "tracking_table": [
      {
        "period_id": 31,
        "label": "Jan 2025",
        "actual_value": 0,
        "target_value": 70
      },
      {
        "period_id": 32,
        "label": "Feb 2025",
        "actual_value": 0,
        "target_value": 70
      },
      {
        "period_id": 33,
        "label": "Mar 2025",
        "actual_value": 0,
        "target_value": 70
      }
    ],
    "created_at": "2025-12-19 13:13:05",
    "updated_at": "2025-12-19 13:13:05"
  }
};

final mockOkrGraph = {
  "status": "success",
  "message": "OKR Dashboard data retrieved successfully",
  "data": [
    {
      "id": 1,
      "name": "Mendapatkan 100 Milyar Revenue",
      "okr_cycle_id": 6,
      "progress": 65,
      "status": 1,
      "key_results": [
        {
          "id": 101,
          "name": "Monthly Sales Performance",
          "frequency": 1,
          "frequency_label": "Monthly",
          "format": 0,
          "format_label": "Number",
          "direction": 0,
          "direction_label": "Higher is Better",
          "aggregation": 0,
          "aggregation_label": "Latest",
          "status": 1,
          "average_actual_value": 78.3,
          "average_target_value": 90.0,
          "target_value": 90.0,
          "data": [72.0, 75.5, 87.4, 68.0, 81.2, 85.8],
          "labels": [
            "Jan 2025",
            "Feb 2025",
            "Mar 2025",
            "Apr 2025",
            "May 2025",
            "Jun 2025"
          ]
        },
        {
          "id": 102,
          "name": "Quarterly Expansion Leads",
          "frequency": 2,
          "frequency_label": "Quarterly",
          "format": 0,
          "format_label": "Number",
          "direction": 0,
          "direction_label": "Higher is Better",
          "status": 1,
          "average_actual_value": 150.0,
          "average_target_value": 200.0,
          "target_value": 200.0,
          "data": [140, 160],
          "labels": ["Q1 2025", "Q2 2025"]
        }
      ]
    },
    {
      "id": 2,
      "name": "Mendapatkan 1 Milyar Revenue",
      "okr_cycle_id": 6,
      "progress": 42,
      "status": 1,
      "key_results": [
        {
          "id": 201,
          "name": "Jualan Beras Weekly Growth",
          "frequency": 0,
          "frequency_label": "Weekly",
          "format": 2,
          "format_label": "Percentage",
          "direction": 0,
          "direction_label": "Higher is Better",
          "status": 1,
          "average_actual_value": 48.5,
          "average_target_value": 70.0,
          "target_value": 70.0,
          "data": [30, 35, 42, 40, 55, 52, 61, 58, 65, 72, 68, 75],
          "labels": [
            "W1 Jan",
            "W2 Jan",
            "W3 Jan",
            "W4 Jan",
            "W1 Feb",
            "W2 Feb",
            "W3 Feb",
            "W4 Feb",
            "W1 Mar",
            "W2 Mar",
            "W3 Mar",
            "W4 Mar"
          ]
        },
        {
          "id": 202,
          "name": "Daily Operations Efficiency",
          "frequency": 4,
          "frequency_label": "Daily",
          "format": 2,
          "format_label": "Percentage",
          "direction": 0,
          "direction_label": "Higher is Better",
          "status": 1,
          "average_actual_value": 94.2,
          "average_target_value": 98.0,
          "target_value": 98.0,
          "data": [92, 95, 93, 91, 96, 98, 95, 94, 93, 97],
          "labels": [
            "01 Jan",
            "02 Jan",
            "03 Jan",
            "04 Jan",
            "05 Jan",
            "06 Jan",
            "07 Jan",
            "08 Jan",
            "09 Jan",
            "10 Jan"
          ]
        }
      ]
    }
  ]
};

final mockOKRDetail = {
  "status": "success",
  "message": "OKR cycle fetched successfully",
  "data": {
    "id": 2,
    "period": "Q1",
    "period_year": 2025,
    "name": "Q1 2025",
    "start_date": "2025-01-01T00:00:00.000000Z",
    "end_date": "2025-03-25T00:00:00.000000Z",
    "status": 0,
    "status_label": "Draft",
    "tenant_id": 1,
    "created_by": {
      "id": 1,
      "name": "Superadmin ESS",
      "email": "superadmin@example.com"
    },
    "objectives_count": 1,
    "objectives": [
      {
        "id": 3,
        "title": "pfft scarily past adolescent jaunty 3",
        "description":
            "Amissio vesco umerus vigor sit cavus appositus. Conscendo tutamen aequitas synagoga. Degero tamisium depono surculus laborum adicio vetus qui bis. Tui eius conspergo arbor tonsor abeo vehemens. Tendo solutio aurum torrens paens voluptatibus ceno acervus cresco derideo. Crudelis capillus decretum clibanus vere abeo taceo. Curvo stultus occaecati turba nesciunt totidem.",
        "progress": 0,
        "status": 0,
        "status_label": "Draft",
        "okr_cycle_id": 2,
        "tenant_id": 1,
        "key_results_count": 1,
        "key_results": [
          {
            "id": 3,
            "title": "Achieve NPS score of 70",
            "description": "Net Promoter Score target for Q1 2025",
            "frequency": 1,
            "frequency_label": "Monthly",
            "format": 2,
            "format_label": "Percent",
            "start_value": 50,
            "current_value": 55,
            "target_value": 70,
            "status": 1,
            "status_label": "Active",
            "direction": 0,
            "direction_label": "Higher is Better",
            "aggregation": 0,
            "aggregation_label": "Latest",
            "progress": 25,
            "objective_id": 3,
            "job_position_id": 1,
            "job_level_id": 1,
            "tenant_id": 1,
            "created_at": "2025-12-19 13:13:05",
            "updated_at": "2025-12-19 13:13:05"
          }
        ],
        "created_at": "2025-12-19 13:12:42",
        "updated_at": "2025-12-19 13:12:42"
      }
    ],
    "key_results": {
      "total": 1,
      "draft": 0,
      "active": 1,
      "done": 0,
      "archived": 0
    },
    "created_at": "2025-12-10T13:12:33.000000Z",
    "updated_at": "2025-12-10T13:12:33.000000Z"
  }
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

const mockRequestView = {
  "status": "success",
  "message":
      "View access requested successfully, wait until the admin process your request",
  "data": null
};

const mockRequestViewPayslip = {
  "status": "success",
  "message":
      "View access requested successfully, wait until the admin process your request",
  "data": null
};

const mockPayslip = {
  "status": "success",
  "message": "Payslips retrieved successfully",
  "data": [
    {
      "id": 285,
      "payrun": {
        "id": 14,
        "period_year": 2024,
        "period_month": 11,
        "period_label": "November 2024",
        "status": 2,
        "status_label": "Final",
        "sent_at": null
      },
      "view_access_status": 1,
      "view_access_status_label": "Processed",
      "view_access_granted": false,
      "view_access_days_remaining": null,
      "print_access_status": 2,
      "print_access_status_label": "Granted"
    },
    {
      "id": 276,
      "payrun": {
        "id": 13,
        "period_year": 2025,
        "period_month": 4,
        "period_label": "April 2025",
        "status": 2,
        "status_label": "Final",
        "sent_at": null
      },
      "view_access_status": 2,
      "view_access_status_label": "Granted",
      "view_access_granted": false,
      "view_access_days_remaining": 0,
      "print_access_status": 1,
      "print_access_status_label": "Processed"
    },
    {
      "id": 267,
      "payrun": {
        "id": 12,
        "period_year": 2025,
        "period_month": 3,
        "period_label": "March 2025",
        "status": 2,
        "status_label": "Final",
        "sent_at": null
      },
      "view_access_status": 2,
      "view_access_status_label": "Granted",
      "view_access_granted": false,
      "view_access_days_remaining": 0,
      "print_access_status": 1,
      "print_access_status_label": "Processed"
    },
    {
      "id": 240,
      "payrun": {
        "id": 9,
        "period_year": 2025,
        "period_month": 8,
        "period_label": "August 2025",
        "status": 2,
        "status_label": "Final",
        "sent_at": null
      },
      "view_access_status": 2,
      "view_access_status_label": "Granted",
      "view_access_granted": false,
      "view_access_days_remaining": 0,
      "print_access_status": 0,
      "print_access_status_label": "Pending"
    }
  ],
  "pagination": {
    "current_page": 1,
    "per_page": 50,
    "total": 4,
    "last_page": 1,
    "from": 1,
    "to": 4,
    "first": "http://api.okejobhub.fun/api/ess/payslip?page=1",
    "last": "http://api.okejobhub.fun/api/ess/payslip?page=1",
    "prev": null,
    "next": null
  }
};

const Map<String, dynamic> mockAttendanceDetail = {
  "status": "success",
  "message": "Users attendance data retrieved successfully",
  "data": {
    "id": 8206,
    "attendance_date": "2026-07-22",
    "clock": {
      "in_at": "08:30",
      "out_at": "20:15",
      "duration": "8h 45m",
      "overtime_duration": 6,
      "overtime_duration_fomated": "0h 0m"
    },
    "duration": null,
    "location": {
      "latitude": null,
      "longitude": null
    },
    "shift_id": 1,
    "shift": {
      "id": 1,
      "name": "Morning Shift",
      "start_time": null,
      "end_time": null
    },
    "status": 3,
    "clock_in_status": null,
    "clock_out_status": null,
    "status_label": "Absent",
    "clock_in_status_label": "Unknown",
    "clock_out_status_label": "Unknown",
    "notes": null,
    "approved_at": null,
    "rejected_reason": null,
    "remarks": "Automatically marked as absent - No attendance recorded",
    "metadata": {
      "generated_via": "cronjob",
      "expected_start_time": "09:00:00",
      "expected_end_time": "17:00:00",
      "work_schedule_id": 79,
      "shift_id": 1,
      "generated_at": "2026-07-22T16:30:17.776818Z",
      "marked_absent_at": "2026-07-22T16:30:17.776994Z"
    },
    "created_at": "2026-07-22 23:30:17",
    "updated_at": "2026-07-22 23:30:17"
  }
};

const Map<String, dynamic> mockAttendanceHistory = {
  "status": "success",
  "message": "Users attendance data retrieved successfully",
  "data": {
    "data": [
      {
        "id": 8206,
        "attendance_date": "2026-07-22",
        "clock": {
          "in_at": "08:30",
          "out_at": "20:15",
          "duration": "8h 45m",
          "overtime_duration": 6,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 79,
          "shift_id": 1,
          "generated_at": "2026-07-22T16:30:17.776818Z",
          "marked_absent_at": "2026-07-22T16:30:17.776994Z"
        },
        "created_at": "2026-07-22 23:30:17",
        "updated_at": "2026-07-22 23:30:17"
      },
      {
        "id": 8149,
        "attendance_date": "2026-07-20",
        "clock": {
          "in_at": null,
          "out_at": null,
          "duration": null,
          "overtime_duration": null,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 78,
          "shift_id": 1,
          "generated_at": "2026-07-20T16:30:09.690958Z",
          "marked_absent_at": "2026-07-20T16:30:09.691124Z"
        },
        "created_at": "2026-07-20 23:30:09",
        "updated_at": "2026-07-20 23:30:09"
      },
      {
        "id": 8070,
        "attendance_date": "2026-07-17",
        "clock": {
          "in_at": null,
          "out_at": null,
          "duration": null,
          "overtime_duration": null,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 82,
          "shift_id": 1,
          "generated_at": "2026-07-17T16:30:06.694189Z",
          "marked_absent_at": "2026-07-17T16:30:06.694323Z"
        },
        "created_at": "2026-07-17 23:30:06",
        "updated_at": "2026-07-17 23:30:06"
      },
      {
        "id": 7966,
        "attendance_date": "2026-07-16",
        "clock": {
          "in_at": "13:49",
          "out_at": "14:37",
          "duration": "0h 48m",
          "overtime_duration": 0,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": "0h 48m",
        "location": {
          "latitude": "-6.1949850",
          "longitude": "106.8230700"
        },
        "approver": {
          "id": 18,
          "name": "Lado",
          "email": "ladorayhannajib@gmail.com",
          "phone": null,
          "employee_id": 15,
          "employee_code": "09250015",
          "photo_profile": "users/photo_profile/6a1fbd938bf2b.png",
          "photo_profile_url": "https://bucket.okejobhub.fun/users/photo_profile/6a1fbd938bf2b.png"
        },
        "shift_id": null,
        "status": 1,
        "clock_in_status": 1,
        "clock_out_status": 1,
        "status_label": "Approved",
        "clock_in_status_label": "On Time",
        "clock_out_status_label": "On Time",
        "notes": null,
        "approved_at": "2026-07-16 14:38:32",
        "rejected_reason": null,
        "remarks": null,
        "metadata": {
          "created_via": "ess",
          "created_at": "2026-07-16T06:49:10.812995Z",
          "shift_id": 1,
          "shift_name": "Morning Shift",
          "day_of_week": 4,
          "tolerance_minutes": 700,
          "work_schedule_id": 81,
          "location_name": "Monumen Selamat Datang, Bundaran Hotel Indonesia, RW 05, Menteng, Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Jawa, 10310, Indonesia",
          "coordinates": {
            "latitude": -6.194985,
            "longitude": 106.82307
          }
        },
        "created_at": "2026-07-16 13:49:10",
        "updated_at": "2026-07-16 14:38:32"
      },
      {
        "id": 7958,
        "attendance_date": "2026-07-15",
        "clock": {
          "in_at": null,
          "out_at": null,
          "duration": null,
          "overtime_duration": null,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 80,
          "shift_id": 1,
          "generated_at": "2026-07-15T16:30:05.372228Z",
          "marked_absent_at": "2026-07-15T16:30:05.372420Z"
        },
        "created_at": "2026-07-15 23:30:05",
        "updated_at": "2026-07-15 23:30:05"
      },
      {
        "id": 7903,
        "attendance_date": "2026-07-14",
        "clock": {
          "in_at": null,
          "out_at": null,
          "duration": null,
          "overtime_duration": null,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 79,
          "shift_id": 1,
          "generated_at": "2026-07-14T16:30:04.777347Z",
          "marked_absent_at": "2026-07-14T16:30:04.777476Z"
        },
        "created_at": "2026-07-14 23:30:04",
        "updated_at": "2026-07-14 23:30:04"
      },
      {
        "id": 7846,
        "attendance_date": "2026-07-13",
        "clock": {
          "in_at": null,
          "out_at": null,
          "duration": null,
          "overtime_duration": null,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 78,
          "shift_id": 1,
          "generated_at": "2026-07-13T16:30:02.927383Z",
          "marked_absent_at": "2026-07-13T16:30:02.927576Z"
        },
        "created_at": "2026-07-13 23:30:02",
        "updated_at": "2026-07-13 23:30:02"
      },
      {
        "id": 7769,
        "attendance_date": "2026-07-10",
        "clock": {
          "in_at": null,
          "out_at": null,
          "duration": null,
          "overtime_duration": null,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 82,
          "shift_id": 1,
          "generated_at": "2026-07-10T16:30:01.633904Z",
          "marked_absent_at": "2026-07-10T16:30:01.634136Z"
        },
        "created_at": "2026-07-10 23:30:01",
        "updated_at": "2026-07-10 23:30:01"
      },
      {
        "id": 7715,
        "attendance_date": "2026-07-09",
        "clock": {
          "in_at": null,
          "out_at": null,
          "duration": null,
          "overtime_duration": null,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 81,
          "shift_id": 1,
          "generated_at": "2026-07-09T16:30:03.245877Z",
          "marked_absent_at": "2026-07-09T16:30:03.246076Z"
        },
        "created_at": "2026-07-09 23:30:03",
        "updated_at": "2026-07-09 23:30:03"
      },
      {
        "id": 7661,
        "attendance_date": "2026-07-08",
        "clock": {
          "in_at": null,
          "out_at": null,
          "duration": null,
          "overtime_duration": null,
          "overtime_duration_fomated": "0h 0m"
        },
        "duration": null,
        "location": {
          "latitude": null,
          "longitude": null
        },
        "shift_id": 1,
        "shift": {
          "id": 1,
          "name": "Morning Shift",
          "start_time": null,
          "end_time": null
        },
        "status": 3,
        "clock_in_status": null,
        "clock_out_status": null,
        "status_label": "Absent",
        "clock_in_status_label": "Unknown",
        "clock_out_status_label": "Unknown",
        "notes": null,
        "approved_at": null,
        "rejected_reason": null,
        "remarks": "Automatically marked as absent - No attendance recorded",
        "metadata": {
          "generated_via": "cronjob",
          "expected_start_time": "09:00:00",
          "expected_end_time": "17:00:00",
          "work_schedule_id": 80,
          "shift_id": 1,
          "generated_at": "2026-07-08T16:30:03.497850Z",
          "marked_absent_at": "2026-07-08T16:30:03.497990Z"
        },
        "created_at": "2026-07-08 23:30:03",
        "updated_at": "2026-07-08 23:30:03"
      }
    ],
    "current_page": 1,
    "per_page": 10,
    "total": 15,
    "last_page": 2,
    "from": 1,
    "to": 10,
    "first": "http://api.okejobhub.fun/api/ess/attendance/history?page=1",
    "last": "http://api.okejobhub.fun/api/ess/attendance/history?page=2",
    "prev": null,
    "next": "http://api.okejobhub.fun/api/ess/attendance/history?page=2"
  }
};
