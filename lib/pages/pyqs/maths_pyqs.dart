import 'package:flutter/material.dart';
import '../../components/list_item.dart';

class MathsPyqs extends StatefulWidget {
  const MathsPyqs({Key? key}) : super(key: key);

  @override
  State<MathsPyqs> createState() => _MathsPyqsState();
}

class _MathsPyqsState extends State<MathsPyqs> {
  bool isAtoZ = true;
  final List<String> chapters = <String>[
    '43 Years Maths PYQs',
    'Application of Derivatives',
    'Area Under Curves',
    'Binomial Theorem',
    'Circle',
    'Complex Numbers',
    'Continuity and Differentiability',
    'Definite Integration',
    'Differential Equation',
    'Differentiation',
    'Ellipse',
    'Functions',
    'Heights and Distances',
    'Hyperbola',
    'Indefinite Integration',
    'Inverse Trigonometric Functions',
    'Limits',
    'Linear Programming',
    'Mathematical Reasoning',
    'Matrices and Determinants',
    'Parabola',
    'Permutation and Combination',
    'Probability',
    'Properties of Triangle',
    'Quadratic Equation',
    'Sequence and Series',
    'Sets and Relations',
    'Statistics',
    'Straight Lines',
    'Trigonometric Equations and Inequations',
    'Trigonometric Ratios and Identities',
    'Vector 3D',
    'Vector Algebra',
  ];
  final List links = [
    'https://drive.google.com/file/d/1_1n7koHARxWT0CgY4YPLzLxYAcFUNZkr/view', // 43 Years Maths PYQs
    'https://drive.google.com/file/d/11kUM0KWA9LO3nJFA2WPpABKsLJboFmxc/view', // Application of derivative
    'https://drive.google.com/file/d/18EALOMbMpcRMkX-h_ObVAQ9DBbFMlz66/view', // Area under the curve
    'https://drive.google.com/file/d/1GqBxgFrBIPjMVNHShupFhTkfujePJj6R/view', // Binomial Theorem
    'https://drive.google.com/file/d/1MdGjGtPcEYY2TZinC_XmiQaR-rqTNP2R/view', // Circle
    'https://drive.google.com/file/d/1M6hmwYImydOZzSXade27K8rTf3vKJE_g/view', // Complex number
    'https://drive.google.com/file/d/14ZFvCR3TpkjB2wnJVZvvTh6iWSTnaZy7/view', // Complex number
    'https://drive.google.com/file/d/1U5rUf5g1WShYbvslRzKm3kZJsagU0nOy/view', // Continuity and Differentiability
    'https://drive.google.com/file/d/1h1a8nLsSH7hLtYWuEAX9VIOL_ERELhFb/view', // Definite Integration
    'https://drive.google.com/file/d/1c-7ZdO2cXu8rwrR7ao5EgfLeUwCoGJFb/view', // Differention Equation
    'https://drive.google.com/file/d/1tWmUKgbrbgYTBsJ_o6fZwU3QFeGG-JGm/view', // Ellipse
    'https://drive.google.com/file/d/1I0U4QUiTggAwsc_iwRGR7zjgAySIQixl/view', // Function
    'https://drive.google.com/file/d/1NwPuugWkpFRX4QxlTed_9-wT8bvNHknP/view', // Height and Distances
    'https://drive.google.com/file/d/1cKGpoTAE0Q_0zLNVV2oAnvfAGm1M1LNZ/view', // Hyperbola
    'https://drive.google.com/file/d/18-26bUuLsn_Zeae-46LN0V3mRFFjpuyv/view', // Indefinite Integration
    'https://drive.google.com/file/d/19x0wPAWkszj2R_d5pTSaai8QRoQYouqY/view', // Inverse Trignometric Function
    'https://drive.google.com/file/d/1qQSw4cFaykmNjmGD49ZW_jjgVRSICpoi/view', // Limits
    'https://drive.google.com/file/d/1RDxZDY1BCqpCVY4Ohv-Xu8Ht49Cqy7m5/view', // Linear Programming
    'https://drive.google.com/file/d/1_0Ji_1MjZStmoH05QgpjOSKcg-gniIg4/view', // Mathematical Reasoning
    'https://drive.google.com/file/d/1I9cNbRiiH0XkrcJkFpFXUd0liwZmL1iY/view', // Matrices and Determinants
    'https://drive.google.com/file/d/1dEcgy8lCZ5HdvEoBPIxrBdo4O-ZimFyR/view', // Parabola
    'https://drive.google.com/file/d/1V5Y2suSgTsif0NPQGxNk4OtnnpspjvSj/view', // Permutation Combination
    'https://drive.google.com/file/d/1Fki6lJZ9sdNnWttIjNNdSrtpDMD9EbSg/view', // Probability
    'https://drive.google.com/file/d/1wsTRpUb8nrZ3jpCbKdF_9wDQjwwaGITM/view', // Property of triangle
    'https://drive.google.com/file/d/1azoZjpvd1WL_NRS5Q5YIFiWPCnMsGlI5/view', // Quadratic Equation
    'https://drive.google.com/file/d/1ZZtIXIEZTlI7M015g-zdaNmcAktzunAF/view', // Sequence and Series
    'https://drive.google.com/file/d/1gSgE3qdO4mLWLFxESzKbRESL5MmELWCL/view', // Sets and relation
    'https://drive.google.com/file/d/1Y66S03pTsivGJtZzobYvSwvGPmJFe3mu/view', // Statistics
    'https://drive.google.com/file/d/1eK3LYow_nvKygHSfpUIuOYKxBofX4yeV/view', // Straight Lines
    'https://drive.google.com/file/d/1SDLJ6XL-d7et-gQFYQu3rjHB8jpC0y-W/view', // Trignometric Equation & inequation
    'https://drive.google.com/file/d/18FVsN1AuyGU8ediaHMiSq7UAue67yXor/view', // Trignometric ratio and identities
    'https://drive.google.com/file/d/1INuXR9FYKukT91rL1ANwBsz90ptNvfQ2/view', // vector 3D
    'https://drive.google.com/file/d/1ci4jk0f1omEygs_c0kO_dpqdzvp11WKI/view', // vector algebra
  ];
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 14),
            child: ElevatedButton.icon(
                onPressed: () => setState(() => isAtoZ = !isAtoZ),
                icon: Icon(Icons.swap_vert),
                label: Text(isAtoZ ? 'Ascending' : 'Descending')),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: chapters.length,
                itemBuilder: (context, index) => ListItem(
                    name: isAtoZ
                        ? chapters[index]
                        : chapters.reversed.toList()[index],
                    index: index,
                    url: isAtoZ
                        ? links[index]
                        : links.reversed.toList()[index])),
          ),
        ],
      );
}
