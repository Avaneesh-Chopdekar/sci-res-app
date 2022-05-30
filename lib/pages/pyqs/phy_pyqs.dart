import 'package:flutter/material.dart';

import '../../components/list_item.dart';

class PhyPyqs extends StatefulWidget {
  const PhyPyqs({Key? key}) : super(key: key);

  @override
  State<PhyPyqs> createState() => _PhyPyqsState();
}

class _PhyPyqsState extends State<PhyPyqs> {
  bool isAtoZ = true;
  final List<String> chapters = <String>[
    '43 Years Physics PYQs',
    'Alternating Current',
    'Atomic Physics',
    'Capacitance',
    'Center of Mass and Collision',
    'Communication System',
    'Current Electricity',
    'Electromagnetic Induction',
    'Electromagnetic Waves',
    'Electrostatics',
    'Experimental Physics',
    'Gravitation',
    'Kinetic Theory of Gases',
    'Laws of Motion',
    'Magnetic Effects of Current',
    'Magnetism and Matter',
    'Mathematics in Physics',
    'Mechanical Properties of Fluids',
    'Motion in One Dimension',
    'Motion in Two Dimension',
    'Nuclear Physics',
    'Oscillations',
    'Properties of Matter',
    'Ray Optics',
    'Rotational Motion',
    'Semiconductors',
    'Thermal Properties of Matter',
    'Thermodynamics',
    'Units and Dimensions',
    'Wave Optics',
    'Waves and Sound',
    'Work Power and Energy',
  ];
  final List links = [
    'https://drive.google.com/file/d/1PWTjqqxPBiQzPE037cUk-_0XMNQSMUDU/view', // 43 years PYQS Physics
    'https://drive.google.com/file/d/1pc-5kaTjokouIkgehzTk97Zo2bwMYN_d/view', // Alternating current
    'https://drive.google.com/file/d/1Foe0tK8YXEh1ndLhPQwu1apPu66OwKtX/view', // Atomic physics
    'https://drive.google.com/file/d/1h1s2cJpQiBV8T9d2pcZOwmRanjaHa9iX/view', // Capacitance
    'https://drive.google.com/file/d/1876QSGlYFX-HRCElNi9szabKy-_HORS7/view', // Center of mass momentum conversion and collision
    'https://drive.google.com/file/d/17HGICZaJSaS7kUSOvX_TN27xD0S-2QXk/view', // Communication System
    'https://drive.google.com/file/d/1hFn0l86I9Q5ur1kbRKWCeU-3n9r93UPd/view', // Current Electricity
    'https://drive.google.com/file/d/15wmP7dqjfzFVrJw3O4Kyw_zf06NFkR3c/view', // Electromagnetic Induction
    'https://drive.google.com/file/d/1JEUgCUCdzOpmViKwuIfXzfGMpz6_54yF/view', // Electromagnetic Waves
    'https://drive.google.com/file/d/1jjX-YX8R7janrlENiivCo3B3CjXMVd1u/view', // Electrostatistics
    'https://drive.google.com/file/d/1su9U-bnPqtwJM7kz2qruIryQ-ra_wwhD/view', // Experimental Physics
    'https://drive.google.com/file/d/1snHWHPKNiljhfYRvAOwvIdZzpd5Czmmy/view', // Gravitation
    'https://drive.google.com/file/d/1Z2rMT5UwikXG2c1sq66pt8tQJMWacrQY/view', // Kinetic Theory of Gases
    'https://drive.google.com/file/d/13IqPRMd4MuOgeH_gc4rXdNIsdlnT5_Vk/view', // Laws of Motion
    'https://drive.google.com/file/d/164-E_58kIhv-ffqWrx3px59QG5z9HwNg/view', // Magnetic Effects of Current
    'https://drive.google.com/file/d/1akU1hB5qneYcMudXhhyLUZcqZ8kzNQZW/view', // Magnetism and Matter
    'https://drive.google.com/file/d/1wfBHfhJOd9P-bflmqT0FPEv3lwr6mDYW/view', // Maths in Physics
    'https://drive.google.com/file/d/1GEIC-MoZVO9iTfW2UPwgCYXQE4kiH90v/view', // Mechanical Properties of Fluids
    'https://drive.google.com/file/d/1E-9PCv1hfaNRGtCW5UbjiWOX97KzGudf/view', // Motion in one dimension
    'https://drive.google.com/file/d/1A13E6CPmYQuZawu5WMCgcC-rRQUIMd4K/view', // Motion in two dimension
    'https://drive.google.com/file/d/1q7GgAyQfrm9ofwUBucrT-hM8plCGAq_m/view', // Nuclear Physics
    'https://drive.google.com/file/d/12es6k3YC9AToH_9BHvz6vbU2pPyUl5b-/view', // Oscillations
    'https://drive.google.com/file/d/1f7T8RoHoYmR1tbvpw9TgyA6exD2rSrqg/view', // Properties of Matter
    'https://drive.google.com/file/d/1npZfXvyH_zQvAyCNBVHWxMvezCpkszNV/view', // Ray Optics
    'https://drive.google.com/file/d/12F85yRofr4p96a81wNSitkRqdZhyzSbQ/view', // Rotational Motion
    'https://drive.google.com/file/d/1ziT599gqFoOCx451D3fNqM13DFtN49wG/view', // Semiconductor
    'https://drive.google.com/file/d/1kTQ3p-j0CjSyhf7BYy-Oq3E03rnl-3yu/view', // Thermal Properties of Matter
    'https://drive.google.com/file/d/1IhcJ5J6NHb5bSC3n5iY8PRxkpmfzSfk9/view', // Thermodynamics
    'https://drive.google.com/file/d/1UO6pa1hq4HRyK73dknM1fwkvkbus_uD6/view', // Units and Dimension
    'https://drive.google.com/file/d/1jeJeOFgV6pLA799vbiVns4imqMcKBFgm/view', // Wave Optics
    'https://drive.google.com/file/d/1Yf1FlAJZBcXHep8VlHj3aawVQFulhcnm/view', // Wave and sounds
    'https://drive.google.com/file/d/15HcdCPjTZ96Kvbzr9i4vkaODGBV12QGo/view', // Work energy power
  ];

  @override
  Widget build(BuildContext context) => StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) =>
                Column(
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
        ),
      );
}
