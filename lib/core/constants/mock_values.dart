// Hardcoded JSON structure to mimic the successful API response
// for a performance assessment, based on user-provided images.

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
