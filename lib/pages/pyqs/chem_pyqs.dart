import 'package:flutter/material.dart';
import '../../components/list_item.dart';

class ChemPyqs extends StatefulWidget {
  const ChemPyqs({Key? key}) : super(key: key);

  @override
  State<ChemPyqs> createState() => _ChemPyqsState();
}

class _ChemPyqsState extends State<ChemPyqs> {
  final List chapters = [
    '43 Years Chemistry PYQs',
    'Alcohols Phenols and Ethers',
    'Aldehydes and Ketones',
    'Aromatic Compounds',
    'Atomic Structure',
    'Biomolecules and Polymers',
    'Carboxylic Acid and Its Derivatives',
    '''Chemical Bonding and Molecular 
Structure''',
    'Chemical Equilibrium',
    'Chemical Kinetics',
    'Chemistry in Everyday Life',
    '''Classification of Elements and 
Periodicity in Properties''',
    'Coordination Compounds',
    'd and f Block Elements',
    'Electrochemistry',
    'Environmental Chemistry',
    'General Organic Chemistry',
    '''General Principles and Processes of 
Isolation of Metals''',
    'Haloalkanes and Haloarenes',
    'Hydrocarbons',
    'Hydrogen',
    'Ionic Equilibrium',
    '''Organic Compounds Containing 
Nitrogen''',
    'p Block Elements',
    '''Purification and Characterization of 
Organic Compounds''',
    'Qualitative Analysis',
    'Redox Reactions',
    's Block Elements',
    'Solid State',
    'Solutions and Colligative Properties',
    'Some Basic Concepts of Chemistry',
    'States of Matter',
    'Surface Chemistry',
    'Thermodynamics',
  ];
  final List links = [
    'https://drive.google.com/file/d/1TZbmjf151uVS4DUysfSs5MCjBSM_wVP9/view', // 43 Years Chem PYQs
    'https://drive.google.com/file/d/1FwQXQOcXGRrb2lJU8URoO7cx0OP0e8WR/view', // Alcohols Phenol ether
    'https://drive.google.com/file/d/13H5MUhKFzj1ffbOr09FQ5WSTzHgIZ4Y0/view', // Aldehydes and ketones
    'https://drive.google.com/file/d/1_Is6rfKVQ3M1kSoH93qDTEZqMwsTYl2W/view', // Aromatic Compounds
    'https://drive.google.com/file/d/1IwKIylhOO3MQp2b6ly6bvnEaMpclVpSK/view', // Atomic Structure
    'https://drive.google.com/file/d/1mDtdjvA_5iTs8ljr9d9pRroe1A9R0etl/view', // Biomolecules and Polymers
    'https://drive.google.com/file/d/1hjgwomfEzQPsIonXAjzfyYPzTbLZgPuG/view', // Carboxyl acids and Derivatives
    'https://drive.google.com/file/d/1S1tVOkKS0-kNpAlg3f2ekEhFZ3OP9o8D/view', // Chemical Bonding and Molecular Structure
    'https://drive.google.com/file/d/1Ku5tel4opKrRXRaCA7eWESOERcW0VCNJ/view', // Chemical Equllibrium
    'https://drive.google.com/file/d/1Puni54rYwP2Gomlh2m7_LWkc3BGMtYmE/view', // Chemical Kinetics
    'https://drive.google.com/file/d/1sb-r33giDABZSyCkfX6tEnaFwSCDi71T/view', // Chemistry in everyday life
    'https://drive.google.com/file/d/1HHCPHet7n7WXosL4_38G3e2Xl3amB0JF/view', // Classification Elements and Periodicty in property
    'https://drive.google.com/file/d/1aQggc3zpb8JL4QG2PYUWmPlydOODQNYi/view', // Coordinate Compounds
    'https://drive.google.com/file/d/10JBqrVuFFabYBUvJAo3mBuUSBFgMlEK6/view', // d and f blocks
    'https://drive.google.com/file/d/1zn2SThwdauyHhUVpA1X9fnF3UsatlRbT/view', // ElectroChemistry
    'https://drive.google.com/file/d/1bI-fdvtOwHpL7P2a-lThLjHWlPeQqtac/view', // Environmental Chemistry
    'https://drive.google.com/file/d/1AOH4_UvfmK5D8wWJxIk53jgu66Hrg-6Q/view', // General Organic Chemistry
    'https://drive.google.com/file/d/17OMC05g8Nw8_e_r15EZ0ijA_DLo_CeJR/view', // General Principles and Processes of Isolation of Metals
    'https://drive.google.com/file/d/1OHySJ7mjTkJ5FSPS_mL4CZXAb_GXF0yY/view', // Haloalkanes
    'https://drive.google.com/file/d/1_sXkUdz9MdMDsXVksYZ2gylycBE4A9Uu/view', // Hydrocarbons
    'https://drive.google.com/file/d/1s3cT-7EnKoQP3isKQzWHQRle2L2pvZly/view', // Hydrogen
    'https://drive.google.com/file/d/1KfbJ0I37QWgO6OC5WuTT0MLmMcEgP-xx/view', // Ionic Equilibrium
    'https://drive.google.com/file/d/1hLMxvUQIVKlh-jHNacyTHc6P6TYnEk-Z/view', // Organic Compounds having Nitrogen
    'https://drive.google.com/file/d/1J8pdkEoUTzpWR0DXJz_3Igr90LVlIx_U/view', // p block elements
    'https://drive.google.com/file/d/1tK2Im5sXeLV6ndnUb8cf1S0ImuuyaFgp/view', // Purification and Characterization of Organic Compounds
    'https://drive.google.com/file/d/1i_LHXPT9PcP5JQCm2YGD66X3StSYq7QT/view', // Qualitative Analysis
    'https://drive.google.com/file/d/1YObkD5sGDP0WtIN562sjIxvW4Dbf_Ezf/view', // Redox Reactions
    'https://drive.google.com/file/d/1WUKqkHJCt58Ug5PipDV0356pW0t5TUd5/view', // s Block Elements
    'https://drive.google.com/file/d/1jmGVHr1IPOFB_fTGqPG6sRvgKfMv4yO7/view', // Solid State
    'https://drive.google.com/file/d/1ER3d8G3jBTREQ_BRDUW5K0a6YC7Pogsc/view', // Solutions and Colligative Properties
    'https://drive.google.com/file/d/1Tx9jW6m2nNt1PW4E7_zGX8DvCj3x4PHv/view', // Some Basic Concepts of Chemistry
    'https://drive.google.com/file/d/1MD2sSl26Njt_zCUc6u7n3brTAX4m95H8/view', // States of Matter
    'https://drive.google.com/file/d/1VYjTb49BehDzKRig_4j7JpldoeHCCMpC/view', // Surface Chemistry
    'https://drive.google.com/file/d/1uGWRB1YoCgmgJnATzk0UbIkt-mswovc4/view', // Thermodynamics
  ];
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: chapters.length,
      itemBuilder: (context, index) =>
          ListItem(name: chapters[index], index: index, url: links[index]));
}
