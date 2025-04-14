# QSTEM Test Questions Repository

A collection of test questions and answers for various subjects in the QSTEM educational system.

## Repository Structure

```
.
├── tests/                    # All test questions
│   ├── kazakh_history/      # History test questions
│   ├── math/               # Mathematics test questions
│   ├── physics/           # Physics laboratory questions
│   ├── psychology/        # Psychology test questions
│   └── teachers/          # Teacher-specific test questions
│       ├── algebra/       # Algebra test questions
│       ├── biology/       # Biology test questions
│       ├── informatics/   # Informatics test questions
│       ├── kazakh_history/ # Kazakh history test questions
│       ├── kazakh_language/ # Kazakh language test questions
│       ├── aibek/         # Aibek's test questions
│       └── nurai/         # Nurai's test questions
├── docs/                    # Documentation
│   └── SECURITY_ANALYSIS.md # Security analysis report
└── backups/                 # Original file backups
    ├── sandbox_backup/
    ├── kazakh_history_backup/
    ├── math_backup/
    ├── physics_backup/
    ├── psychology_backup/
    ├── teachers_backup/
    ├── aibek_backup/
    └── nurai_backup/
```

## File Format

All test questions are stored in JSON format with the following structure:

```json
[
  {
    "Text": "Question text",
    "Points": 1,
    "Answers": [
      {
        "Text": "Answer text",
        "IsCorrect": true/false
      }
    ]
  }
]
```

## File Naming Convention

All files follow a consistent naming convention:
- Lowercase letters and numbers only
- Special characters replaced with underscores
- Descriptive names based on content
- `.json` extension

Example:
- Original: `7 сынып 1 айлық тест 2н.json`
- New: `7_sonyp_1_aylyk_test_2n.json`

## Security

A comprehensive security analysis has been performed on this repository. See [docs/SECURITY_ANALYSIS.md](docs/SECURITY_ANALYSIS.md) for details.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or concerns, please open an issue in the repository. 