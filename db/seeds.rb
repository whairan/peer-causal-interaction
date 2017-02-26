# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke", movie: movies.first)

Company.destroy_all
Drug.destroy_all
Disease.destroy_all
Trial.destroy_all
Phase.destroy_all
Status.destroy_all
DrugDisease.destroy_all
Stock.destroy_all
StockType.destroy_all
StockMarket.destroy_all

#STATUSES
Status.create(name:"Recruiting")
Status.create(name:"Approved")
Status.create(name:"Ongoing")
Status.create(name:"Active")
Status.create(name:"Completed")
Status.create(name:"Complete")
Status.create(name:"Terminated")
Status.create(name:"Recruiting (Invitation Only)")
Status.create(name:"Not Yet Recruiting")
Status.create(name:"Active, Not Recruiting")
Status.create(name:"Completed (Has Results)")
Status.create(name:"Suspended")
Status.create(name:"Enrolling (By Invitation)")


#DRUGS
Drug.find_or_create_by(name:"NUPLAZID™ (pimavanserin)", about:"a selective serotonin inverse agonist (SSIA) preferentially targeting 5-HT2A receptors that play an important role in psychosis")
Drug.find_or_create_by(name:"A4250", about:" highly potent and selective inhibitor of the ileal bile acid transporter (IBAT, sometimes also referred to as the apical sodium dependent bile acid transporter (ASBT)) that acts locally in the gut resulting in a reduced risk of systemic side effects and undesirable drug-drug interactions")
Drug.find_or_create_by(name:"Elobixibat", about:" IBAT inhibitor")
Drug.find_or_create_by(name:"A3384", about:"proprietary formulation designed to deliver a drug known as cholestyramine directly to the colon")
Drug.find_or_create_by(name:"VOCLOSPORIN", about:"calcineurin inhibitor. Immunosuppressant")
Drug.find_or_create_by(name:"BTI-320", about:"BTI-320 is a non-systemic, non-toxic, chewable drug candidate for prevention of diabetes and its complications. BTI-320 inhibits the enzymes that release glucose from complex carbohydrate in foods during digestion, reducing the amount of available glucose absorbed through the intestine")
Drug.find_or_create_by(name:"Resunab (JBT-101)", about:"")
Drug.find_or_create_by(name:"Vicinium", about:"")
Drug.find_or_create_by(name:"RSV F Vaccine", about:"respiratory syncytial virus fusion (F) protein nanoparticle vaccine candidate")
Drug.find_or_create_by(name:"RSV-F Vaccine", about:"")
Drug.find_or_create_by(name:"REGN1979", about:"CD20/CD3 Antibody")
Drug.find_or_create_by(name:"REGN1979 + REGN2810", about:"CD20/CD3 Antibody + PD-1 Antibody")
Drug.find_or_create_by(name:"REGN1908-1909", about:"Feld1 Antibody")
Drug.find_or_create_by(name:"REGN3470-3471-3479", about:"Antibody to Ebola virus")
Drug.find_or_create_by(name:"REGN2477", about:"Activin A Antibody")
Drug.find_or_create_by(name:"REGN3500", about:"In collaboration ith Sanofi")
Drug.find_or_create_by(name:"SARILUMAB", about:"IL-6R Antibody. In collaboration with Sanofi")
Drug.find_or_create_by(name:"DUPILUMAB", about:"IL-4R Antibody. In collaboration with Sanofi")
Drug.find_or_create_by(name:"TREVOGRUMAB", about:"GDF8 Antibody")
Drug.find_or_create_by(name:"EVINACUMAB", about:"Angptl3 Antibody")
Drug.find_or_create_by(name:"REGN2176-3", about:"Rinucumab (PDGFR-beta Antibody) + Aflibercept. Collaboration with Bayer HealthCare")
Drug.find_or_create_by(name:"REGN910-3", about:"Nesvacumab (Ang2 Antibody) + Aflibercept. Collaboration with Bayer HealthCare")
Drug.find_or_create_by(name:"REGN2810", about:"PD-1 Antibody. In collaboration with Sanofi")
Drug.find_or_create_by(name:"ALIROCUMAB", about:"PCSK9 Antibody. In collaboration with Sanofi")
Drug.find_or_create_by(name:"AFLIBERCEPT", about:"VEGF-Trap. Collaboration with Bayer HealthCare")
Drug.find_or_create_by(name:"SARILUMAB", about:"IL-6R Antibody. In collaboration with Sanofi")
Drug.find_or_create_by(name:"DUPILUMAB", about:"IL-4R Antibody. In collaboration with Sanofi")
Drug.find_or_create_by(name:"FASINUMAB", about:"NGF Antibody. In collaboration with Teva and Mitsubishi Tanabey")
Drug.find_or_create_by(name:"REGN2222", about:"RSV Antibody")
Drug.find_or_create_by(name:"SER-109", about:"An Ecobiotic® rationally-designed, fermented microbiome therapeutic derived by a manufacturing process that does not require human donor material, SER-262 is the first synthetically-derived and designed microbiome therapeutic ever to reach clinical-stage development")
Drug.find_or_create_by(name:"SER-287", about:"a preparation of bacterial spores highly purified from stool donations obtained from healthy, screened donors and put into capsules. These bacterial spores are inactive forms of the normal bacteria that live in a healthy intestine.")
Drug.find_or_create_by(name:"SER-109", about:"investigational oral microbiome therapeutic for the prevention of recurrent Clostridium difficile infection (CDI) in adults who have had three or more occurrences within a nine-month period.")
Drug.find_or_create_by(name:"SER-262", about:"")
Drug.find_or_create_by(name:"Edasalonexent (CAT-1004)", about:"novel investigational drug for the treatment of Duchenne muscular dystrophy (DMD) that we designed to potentially benefit all boys suffering from DMD regardless of mutation type. Edasalonexent inhibits NF-κB. This approach is different from investigational methods that are mutation-specific that have the potential to treat small sub-sets of those affected by DMD.")
Drug.find_or_create_by(name:"DMD EXON 51 (ETEPLIRSEN / AVI-4658)", about:"designed to skip exon 51. A candidate for exon 53 skipping (SRP-4053) is in clinical development, and a candidate for exon 45 skipping (SRP-4045) has entered early clinical development")
Drug.find_or_create_by(name:"DMD EXON 53 (SRP-4053)", about:"Duchenne muscular dystrophy (DMD) patients with deletions amenable to exon 53 skipping")
Drug.find_or_create_by(name:"DMD EXON 45 (SRP-4045)", about:"Duchenne muscular dystrophy (DMD) patients with out-of-frame deletionmutations amenable to skipping exon 45 and exon 53 respectively")
Drug.find_or_create_by(name:"Iclusig® (ponatinib)", about:"Potent Oral Pan-FGFR Inhibitor")
Drug.find_or_create_by(name:"brigatinib (AP26113)", about:"")
Drug.find_or_create_by(name:"AP32788", about:"EGFR/HER2 Inhibitor")
Drug.find_or_create_by(name:"Hyalofast", about:"non-woven 2×2 cm or 5×5 cm biodegradable hyaluronic acid-based scaffold for hyaline-like cartilage regeneration")
Drug.find_or_create_by(name:"CINGAL® (USA)", about:"Hyaluronic Acid plus Triamcinolone Hexacetonide")
Drug.find_or_create_by(name:"Vicinium ", about:"fully biologic engineered protein designed for targeted tumor local therapy to EpCAM positive tumor cells")
Drug.find_or_create_by(name:"Proxinium", about:"squamous cell carcinoma of the head and neck")
Drug.find_or_create_by(name:"GLASSIA", about:"Affects Alpha1-Proteinase Inhibitor (A1PI) Levels in Epithelial Lining Fluid")
Drug.find_or_create_by(name:"Adnnyovate (BAX 855)", about:"PEGylated Recombinant factor VIII (rFVIII)")
Drug.find_or_create_by(name:"Calaspargase pegol", about:"")
Drug.find_or_create_by(name:"Cinryze SC", about:"")
Drug.find_or_create_by(name:"HYQVIA/HyQvia", about:"Recombinant Human Immune Globulin Infusion (Human) and Immune Globulin Infusion (Human)")
Drug.find_or_create_by(name:"BAX69 (Imalumab)", about:"Monoclonal Antibody in a combinatorial treatment")
Drug.find_or_create_by(name:"Obizur", about:"Recombinant pFVIII")
Drug.find_or_create_by(name:"Onivyde", about:"in combination with 5-FU/calcium levofolinate")
Drug.find_or_create_by(name:"SHP465", about:"")
Drug.find_or_create_by(name:"SHP555 (SPD555)", about:"")
Drug.find_or_create_by(name:"SHP607", about:"")
Drug.find_or_create_by(name:"SHP609", about:"")
Drug.find_or_create_by(name:"Onivyde", about:"Ferumoxytol followed by MM-398")
Drug.find_or_create_by(name:"Alectinib", about:"Drug being used in different trials in combination with the drugs Bevacizumab, Crizotinib, Docetaxel, Pemetrexed, Atezolizumab, Erlotinib, RO5424802, rifampin, CH5424802, RO5452802 Tarceva, LDK378, MPDL3280A,Vemurafenib, Trastuzumab emtansine, brigatinib, LDK378, Posaconazole, Esomeprazole")
Drug.find_or_create_by(name:"Anti-CD20/CD3 (BTCT4465A, RG7828)", about:"")
Drug.find_or_create_by(name:"Anti-Ly6E (DLYE5953A, RG7841)", about:"")
Drug.find_or_create_by(name:"Anti-OX40 (MOXR0916, RG7888)", about:"")
Drug.find_or_create_by(name:"Anti-TIGIT (MTIG7192A, RG6058)", about:"")
Drug.find_or_create_by(name:"Anti-ST2 (AMG 282, RG6149)", about:"")
Drug.find_or_create_by(name:"GDC-0853 (RG7845)", about:"")
Drug.find_or_create_by(name:"Etrolizumab (rhuMAb Beta7, RG7413)", about:"")
Drug.find_or_create_by(name:"GDC-3280", about:"")
Drug.find_or_create_by(name:"IL22-Fc (UTTR1147A, RG7880)", about:"")
Drug.find_or_create_by(name:"Aducanumab (Aβ mAb)", about:"")
Drug.find_or_create_by(name:"Obinutuzumab", about:"Only a selction of trials shown, currently 90 in total")
Drug.find_or_create_by(name:"BAN2401 (Aβ mAb)", about:"")
Drug.find_or_create_by(name:"BG00011 (STX-100)", about:"")
Drug.find_or_create_by(name:"BIIB059 (anti-BDCA2)", about:"")
Drug.find_or_create_by(name:"BIIB074 (Nav1.7 inhibitor)", about:"")
Drug.find_or_create_by(name:"Dapirolizumab pegol (anti-CD40L)", about:"")
Drug.find_or_create_by(name:"E2609 (BACE1 inhibitor)", about:"")
Drug.find_or_create_by(name:"Opicinumab (anti-LINGO)", about:"")
Drug.find_or_create_by(name:"BIIB054 (anti-α-synuclein)", about:"")
Drug.find_or_create_by(name:"ADCETRIS® (brentuximab vedotin)", about:" ")
Drug.find_or_create_by(name:"Brentuximab Vedotin", about:"CD30-expressing cutaneous T-cell lymphoma (top-line data reported)")
Drug.find_or_create_by(name:"Vadastuximab talirine (SGN-CD33A)", about:" ")
Drug.find_or_create_by(name:"Denintuzumab mafodotin (SGN-CD19A)", about:" ")
Drug.find_or_create_by(name:"Enfortumab vedotin*  (ASG-22ME)", about:" ")
Drug.find_or_create_by(name:"SGN-LIV1A", about:"")
Drug.find_or_create_by(name:"ASG-15ME*", about:"")
Drug.find_or_create_by(name:"SEA-CD40", about:"")
Drug.find_or_create_by(name:"SGN-CD19B", about:"")
Drug.find_or_create_by(name:"SGN-CD123A", about:"")
Drug.find_or_create_by(name:"SGN-CD352A", about:"")
Drug.find_or_create_by(name:"SGN-2FF", about:"")
Drug.find_or_create_by(name:"Cabozantinib", about:"Inhibits the activity of receptor tyrosine kinases including MET, VEGF Receptors, AXL, and RET")
Drug.find_or_create_by(name:"COTELLIC® Cobimetinib", about:" In combination with vemurafenib")
Drug.find_or_create_by(name:"XL888", about:"ATP-competitive inhibitor of HSP90, a molecular chaperone protein that affects the activity and stability of a range of key regulatory proteins, including kinases such as BRAF, MET, and VEGFR2")
Drug.find_or_create_by(name:"Rucaparib", about:"An oral inhibitor of poly (ADP-ribose) polymerase (PARP)")
Drug.find_or_create_by(name:"Axicabtagene ciloleucel (KTE-C19) ", about:"T cell receptor (TCR)")
Drug.find_or_create_by(name:"Qsymia", about:"Combination of of Phentermine and Topiramate in a once-daily pill")
Drug.find_or_create_by(name:"Ofatumumab", about:"Human monoclonal antibody which targets an epitope in the CD20 molecule encompassing parts of the small and large extracellular loops")
Drug.find_or_create_by(name:"Daratumumab", about:" IgG1k monoclonal antibody (mAb) that binds with high affinity to the CD38 molecule, which is highly expressed on the surface of multiple myeloma cells")
Drug.find_or_create_by(name:"Tisotumab vedotin (HuMax®-TF-ADC)", about:"")
Drug.find_or_create_by(name:"HuMax®-AXL-ADC", about:"ADC targeted to AXL, a signaling molecule expressed on many solid cancers and implicated in tumor biology")
Drug.find_or_create_by(name:"Teprotumumab", about:"Fully human antibody, targets the Insulin-like Growth Factor-1 Receptor (IGF-1R)")
Drug.find_or_create_by(name:"HuMax®-TAC-ADC", about:"Targets CD25, which is expressed on a variety of hematological tumors and shows limited expression on normal tissues, which makes it a very attractive target for antibody-payload approaches")
Drug.find_or_create_by(name:"HuMax-IL8", about:"High affinity fully human antibody directed towards IL-8")
Drug.find_or_create_by(name:"JNJ-61178104", about:"Bispecific antibody directed to two inflammatory disease targets")
Drug.find_or_create_by(name:"JNJ-61186372", about:"Bispecific antibody that targets EGFR and cMet")
Drug.find_or_create_by(name:"JNJ-63709178 **(on hold)", about:"Bispecific antibody that targets CD3 and CD123")
Drug.find_or_create_by(name:"AMG 714", about:"Human monoclonal antibody that binds to Interleukin-15 (IL-15)")
Drug.find_or_create_by(name:"XIAFLEX", about:"")
Drug.find_or_create_by(name:"Collagenase clostridium hystolyticum (CCH)", about:"")
Drug.find_or_create_by(name:"Collagenase clostridium hystolyticum (CCH)", about:"")
Drug.find_or_create_by(name:"ZYN002 – CBD Gel", about:"synthetic CBD, a non-psychoactive cannabinoid, formulated as a patent-protected permeation-enhanced gel for transdermal delivery through the skin and into the circulatory system")
Drug.find_or_create_by(name:"ZYN001 – THC Pro-Drug Patch", about:"")
Drug.find_or_create_by(name:"CB-839", about:"Glutaminase Inhibitor")
Drug.find_or_create_by(name:"CB-1158", about:"Arginase Inhibitor")
Drug.find_or_create_by(name:" Neuro-Spinal Scaffold", about:"PLGA [Poly(lactic-co-glycolic acid)] + Poly-L-Lysine [PLL].  Provides structural support to the spared spinal tissue and a supportive matrix to facilitate endogenous repair processes. It degrades over several weeks.")
Drug.find_or_create_by(name:"Bioengineered Neural Trails", about:"Approach to repair the chronically-injured spinal cord is to replace the lost cells by delivering neural stem cells (NSCs).")
Drug.find_or_create_by(name:"Xilonix", about:"")
Drug.find_or_create_by(name:"Lenti-D", about:"Inserting a functional copy of the ABCD1 gene in the patient’s hematopoietic stem cells outside the body, then re-introducing the genetically modified cells into the patient")
Drug.find_or_create_by(name:"Enasidenib ", about:" IDH2m inhibitor ")
Drug.find_or_create_by(name:"AG-120", about:"   IDH1m inhibitor ")
Drug.find_or_create_by(name:"AG881", about:" Pan-IDHm inhibitor ")
Drug.find_or_create_by(name:"AG-348", about:"PKR Activator")
Drug.find_or_create_by(name:"Patisiran (ALN-TTR02)", about:"RNAi mechanism to knockdown the disease-causing TTR protein")
Drug.find_or_create_by(name:"Fitusiran (ALN-AT3)", about:"subcutaneously administered RNAi therapeutic")
Drug.find_or_create_by(name:"ALN-CC5", about:"Investigational RNAi therapeutic targeting complement component 5 (C5) for the treatment of complement-mediated diseases")
Drug.find_or_create_by(name:"ALN-AS1", about:"investigational RNAi therapeutic targeting aminolevulinic acid synthase 1 (ALAS1) for the treatment of acute hepatic porphyrias")
Drug.find_or_create_by(name:"ALN-GO1", about:"")
Drug.find_or_create_by(name:"ALN-TTRsc02", about:"")
Drug.find_or_create_by(name:"ALN-PCSSC", about:"")
Drug.find_or_create_by(name:"ALN-HBV", about:"")


#DISEASES
Disease.find_or_create_by(name:"Schizophrenia", about:"")
Disease.find_or_create_by(name:"Schizophrenia", about:"Treatment for the Negative Symptoms of Schizophrenia")
Disease.find_or_create_by(name:"Parkinson's Disease Psychosis", about:"")
Disease.find_or_create_by(name:"Parkinson's Disease Psychosis", about:"")
Disease.find_or_create_by(name:"Parkinson's Disease Psychosis", about:"")
Disease.find_or_create_by(name:"Cholestatic pruritus, Primary Biliary Cirrhosis", about:"")
Disease.find_or_create_by(name:"Chronic Idiopathic Constipation (CIC)", about:"")
Disease.find_or_create_by(name:"bile acid malabsorption disease (BAM)", about:"")
Disease.find_or_create_by(name:"Prostate Cancer / BPH", about:"")
Disease.find_or_create_by(name:"TYPE 2 DIABETES", about:"")
Disease.find_or_create_by(name:"Cystic Fibrosis, Dermatomyositis", about:"")
Disease.find_or_create_by(name:"Non Muscle-Invasive Carcinoma in Situ and/or High-Grade Papillary Disease of the Bladder Treated With BCG", about:"")
Disease.find_or_create_by(name:"Respiratory Syncytial Virus Infections", about:"")
Disease.find_or_create_by(name:"Respiratory Syncytial Virus (RSV) in patients 60+", about:"")
Disease.find_or_create_by(name:"Non-Hodgkin's Lymphoma,Chronic Lymphocytic Leukemia", about:"")
Disease.find_or_create_by(name:"Lymphoma, Acute Lymphoblastic Leukemia", about:"")
Disease.find_or_create_by(name:"Allergic disease", about:"")
Disease.find_or_create_by(name:"Ebola", about:"")
Disease.find_or_create_by(name:"Fibrodysplasia Ossificans Progressiva", about:"")
Disease.find_or_create_by(name:"Inflammatory diseases", about:"")
Disease.find_or_create_by(name:"Noninfectious uveitis (Rheumatoid Arthritis)", about:"")
Disease.find_or_create_by(name:"Atopic dermatitis in children, nasal polyps, eosinophilic esophagitis", about:"")
Disease.find_or_create_by(name:"Skeletal muscle disorders", about:"")
Disease.find_or_create_by(name:"Homozygous familial hypercholesterolemia, severe forms of hyperlipidemia", about:"")
Disease.find_or_create_by(name:"Neovascular Age-Related Macular Degeneration", about:"")
Disease.find_or_create_by(name:"Wet age-related macular degeneration, diabetic macular edema", about:"")
Disease.find_or_create_by(name:"Advanced cutaneous squamous cell carcinoma", about:"")
Disease.find_or_create_by(name:"Cardiovascular outcomes (Hypercholesterolemia)", about:"")
Disease.find_or_create_by(name:"Diabetic retinopathy", about:"")
Disease.find_or_create_by(name:"Rheumatoid arthritis", about:"")
Disease.find_or_create_by(name:"Atopic dermatitis in adults, asthma", about:"")
Disease.find_or_create_by(name:"Pain due to osteoarthritis, chronic back pain", about:"")
Disease.find_or_create_by(name:"Respiratory syncytial virus", about:"")
Disease.find_or_create_by(name:"Clostridium Difficile ", about:"")
Disease.find_or_create_by(name:"ulcerative colitis (UC)", about:"")
Disease.find_or_create_by(name:"Clostridium Difficile", about:"")
Disease.find_or_create_by(name:"Clostridium Difficile Infection", about:"")
Disease.find_or_create_by(name:"Duchenne muscular dystrophy", about:"")
Disease.find_or_create_by(name:"Duchenne muscular dystrophy", about:"")
Disease.find_or_create_by(name:"Duchenne muscular dystrophy", about:"")
Disease.find_or_create_by(name:"Duchenne muscular dystrophy", about:"")
Disease.find_or_create_by(name:"Myeloid Leukemia, Chronic, Chronic Phase", about:"")
Disease.find_or_create_by(name:"Carcinoma, Non-Small-Cell Lung", about:"")
Disease.find_or_create_by(name:"Defect of Articular Cartilage", about:"")
Disease.find_or_create_by(name:"Osteoarthritis of the Knee", about:"")
Disease.find_or_create_by(name:"Bladder Cancer", about:"")
Disease.find_or_create_by(name:"Alpha1-antitrypsin Deficiency", about:"")
Disease.find_or_create_by(name:"Severe Hemophilia A Patients Undergoing Surgical Procedures", about:"")
Disease.find_or_create_by(name:"Acute Lymphoblastic Leukemia", about:"")
Disease.find_or_create_by(name:"Lymphoblastic Lymphoma", about:"")
Disease.find_or_create_by(name:"Hereditary Angioedema", about:"")
Disease.find_or_create_by(name:"Chronic Inflammatory Demyelinating Polyradiculoneuropathy", about:" ")
Disease.find_or_create_by(name:"Metastatic Colorectal Cancer", about:"")
Disease.find_or_create_by(name:"Acquired Hemophilia A", about:"")
Disease.find_or_create_by(name:"Metastatic Pancreatic Cancer", about:"")
Disease.find_or_create_by(name:"Attention-Deficit Hyperactivity Disorder (ADHD) in children and adolescents (aged 6-17 years)", about:"")
Disease.find_or_create_by(name:"Chronic Idiopathic constipation", about:" ")
Disease.find_or_create_by(name:"Retinopathy of Prematurity (ROP)", about:" ")
Disease.find_or_create_by(name:"Neonatal complications", about:"")
Disease.find_or_create_by(name:"Hunters Syndrome", about:"")
Disease.find_or_create_by(name:"Solid Tumors", about:"")
Disease.find_or_create_by(name:"ER/PR Positive Breast Cancer", about:"")
Disease.find_or_create_by(name:"Triple Negative Breast Cancer", about:"")
Disease.find_or_create_by(name:"Metastatic Breast Cancer With Active Brain Metastasis", about:"")
Disease.find_or_create_by(name:"Metastatic Pancreatic Cancer", about:" ")
Disease.find_or_create_by(name:"Unresectable Advanced Cancer", about:"")
Disease.find_or_create_by(name:"ALK (anaplastic lymphoma kinase) + metastaic non-small cell lung cancer", about:"")
Disease.find_or_create_by(name:"Hematologic malignancies", about:"")
Disease.find_or_create_by(name:"HER2-negative breast cancer and non-small cell lung cancer", about:"")
Disease.find_or_create_by(name:"Solid tumors", about:"")
Disease.find_or_create_by(name:"Solid tumors", about:"")
Disease.find_or_create_by(name:"Asthma", about:"")
Disease.find_or_create_by(name:"Autoimmune diseases", about:"")
Disease.find_or_create_by(name:"Ulcerative colitis", about:"")
Disease.find_or_create_by(name:"Fibrosis", about:"")
Disease.find_or_create_by(name:"Inflammatory diseases", about:"")
Disease.find_or_create_by(name:"Alzheimer’s disease", about:"")
Disease.find_or_create_by(name:"Front-line Indolent non-Hodgkin’s lymphoma", about:"")
Disease.find_or_create_by(name:"Alzheimer’s disease", about:"")
Disease.find_or_create_by(name:"Idiopathic pulmonary fibrosis (IPF)", about:"")
Disease.find_or_create_by(name:"Lupus", about:"")
Disease.find_or_create_by(name:"Trigeminal neuralgia", about:"")
Disease.find_or_create_by(name:"Lupus", about:"")
Disease.find_or_create_by(name:"Alzheimer's disease", about:"")
Disease.find_or_create_by(name:"Multiple sclerosis (MS)", about:"")
Disease.find_or_create_by(name:"Parkinson's disease", about:"")
Disease.find_or_create_by(name:"Relapsed Hodgkin lymphoma (HL)", about:"")
Disease.find_or_create_by(name:"Relapsed systemic anaplastic large cell lymphoma", about:"")
Disease.find_or_create_by(name:"HL post-autologous transplantation consolidation", about:"")
Disease.find_or_create_by(name:"Primary Cutaneous Anaplastic Large Cell Lymphoma, Mycosis Fungoides, Cutaneous T-Cell Lymphoma", about:"")
Disease.find_or_create_by(name:" Relapsed or Refractory EBV-and CD30-positive Lymphomas", about:"")
Disease.find_or_create_by(name:"Systemic lupus erythematosus", about:"")
Disease.find_or_create_by(name:"Frontline older acute myeloid leukemia (AML) (+HMAs)", about:"")
Disease.find_or_create_by(name:"Frontline myelodysplastic syndrome (MDS) (+ HMA)", about:"")
Disease.find_or_create_by(name:"Relapsed AML pre/post allo-transplant", about:"")
Disease.find_or_create_by(name:"Frontline AML  (+ chemotherapy)", about:"")
Disease.find_or_create_by(name:"AML (monotherapy and + HMA)", about:"")
Disease.find_or_create_by(name:"Relapsed DLBCL (rituximab + chemotherapy +/− SGN-CD19A)", about:"")
Disease.find_or_create_by(name:"Frontline DLBCL (+ chemotherapy)", about:"")
Disease.find_or_create_by(name:"Metastatic urothelial cancer", about:"")
Disease.find_or_create_by(name:"Metastatic breast cancer", about:"")
Disease.find_or_create_by(name:"Metastatic urothelial cancer", about:"")
Disease.find_or_create_by(name:"Metastatic or unresectable solid tumors; hematologic malignancies", about:"")
Disease.find_or_create_by(name:"Relapsed NHL", about:"")
Disease.find_or_create_by(name:"AML", about:"")
Disease.find_or_create_by(name:"Multiple myeloma", about:"")
Disease.find_or_create_by(name:"Solid tumors", about:"")
Disease.find_or_create_by(name:"Renal cell cancer", about:"")
Disease.find_or_create_by(name:"Advanced hepatocellular cancer", about:"")
Disease.find_or_create_by(name:"Metastatic melanoma with a BRAF V600E or V600K mutation", about:"")
Disease.find_or_create_by(name:" Metastatic melanoma", about:"")
Disease.find_or_create_by(name:"Ovarian Cancer (treatment)", about:"")
Disease.find_or_create_by(name:"Ovarian Cancer (maintenance)", about:"")
Disease.find_or_create_by(name:"Refractory, aggressive non-Hodgkin Lymphoma (NHL)", about:" ")
Disease.find_or_create_by(name:"Weight Loss", about:"")
Disease.find_or_create_by(name:"Chronic lymphocytic leukemia (CLL)", about:"In combination with chlorambucil")
Disease.find_or_create_by(name:"For extended treatment of patients who are in complete or partial response after at least two lines of therapy for recurrent or progressive CLL", about:"")
Disease.find_or_create_by(name:"Relapsing chronic lymphocytic leukemia (CLL)", about:"In combination with fludarabine and cyclophosphamide (FC)")
Disease.find_or_create_by(name:"Multiple myeloma (MM)", about:"")
Disease.find_or_create_by(name:"Non-Hodgkin's lymphoma (NHL)", about:"")
Disease.find_or_create_by(name:"Solid tumors", about:"")
Disease.find_or_create_by(name:"Solid cancers", about:"")
Disease.find_or_create_by(name:"Solid tumors", about:"")
Disease.find_or_create_by(name:"Graves' orbitopathy", about:"")
Disease.find_or_create_by(name:"Diabetic macular edema", about:"")
Disease.find_or_create_by(name:"Lymphoma", about:"")
Disease.find_or_create_by(name:"Acute myeloid leukemia (AML)", about:"")
Disease.find_or_create_by(name:"Metastatic solid tumors", about:"")
Disease.find_or_create_by(name:"Autoimmune disorders", about:"")
Disease.find_or_create_by(name:"Non-small cell lung cancer (NSCLC)", about:"")
Disease.find_or_create_by(name:"Acute myeloid leukemia", about:"")
Disease.find_or_create_by(name:"Celiac disease", about:"")
Disease.find_or_create_by(name:"Dupuytren's contracture", about:"")
Disease.find_or_create_by(name:"Peyronie's disease", about:"")
Disease.find_or_create_by(name:"Human lipoma", about:"")
Disease.find_or_create_by(name:"Cellulite", about:"")
Disease.find_or_create_by(name:"Acute Myeloid Leukemia (AML) Acute Lymphocytic Leukemia (ALL)", about:"")
Disease.find_or_create_by(name:"Solid Tumors", about:"")
Disease.find_or_create_by(name:"Traumatic Thoracic Acute Spinal Cord Injury", about:"")
Disease.find_or_create_by(name:"Spinal cord injury (SCI)", about:"")
Disease.find_or_create_by(name:"Symptomatic Colorectal Cancer, Advanced Colorectal Cancer, Colorectal Cancer With Cachexia", about:"")
Disease.find_or_create_by(name:"Metastatic Colorectal Cance", about:"")
Disease.find_or_create_by(name:"Pyoderma Gangrenosum", about:"")
Disease.find_or_create_by(name:"Cerebral Adrenoleukodystrophy (CALD)", about:"")
Disease.find_or_create_by(name:"Long-term Follow-up of Subjects With Cerebral Adrenoleukodystrophy Who Were Treated With Lenti-D Drug Product", about:"")
Disease.find_or_create_by(name:"Late Stage Acute Myeloid Leukemia Harboring an Isocitrate Dehydrogenase 2 Mutation", about:"")
Disease.find_or_create_by(name:"Leukemia, Myeloid, Acute", about:"")
Disease.find_or_create_by(name:"Solid Tumors", about:"")
Disease.find_or_create_by(name:"Advanced Cholangiocarcinoma Metastatic Cholangiocarcinoma", about:"")
Disease.find_or_create_by(name:"Relapsed or Refractory Acute Myeloid Leukemia (AML), Untreated AML, Other IDH1-mutated Positive Hematologic Malignancies", about:"")
Disease.find_or_create_by(name:"Acute Myeloid Leukemia (AML) Myelodysplastic Syndrome Hematologic Malignancies", about:"")
Disease.find_or_create_by(name:"Cholangiocarcinoma Chondrosarcoma Glioma", about:"")
Disease.find_or_create_by(name:"Pyruvate Kinase Deficiency", about:"")
Disease.find_or_create_by(name:"Transthyretin (TTR)-Mediated Polyneuropathy (Familial Amyloidotic Polyneuropathy-FAP)", about:"")
Disease.find_or_create_by(name:"Hemophilia A, Hemophilia B", about:"")
Disease.find_or_create_by(name:"Moderate or Severe Hemophilia A or B", about:"")
Disease.find_or_create_by(name:"Paroxysmal Nocturnal Hemoglobinuria (PNH)", about:"")
Disease.find_or_create_by(name:"Acute Hepatic Porphyria", about:"")
Disease.find_or_create_by(name:"Acute Intermittent Porphyria", about:"")
Disease.find_or_create_by(name:"Primary Hyperoxaluria Type 1 (PH1)", about:"")
Disease.find_or_create_by(name:"Transthyretin-mediated Amyloidosis (ATTR Amyloidosis)", about:"")
Disease.find_or_create_by(name:"Homozygous Familial Hypercholesterolemia", about:"")
Disease.find_or_create_by(name:"Hepatitis B, Chronic Hepatitis B, Hepatitis B Infection, HBV", about:"")

#STOCKS
acad = Stock.find_or_create_by(ticker:'ACAD')
albo = Stock.find_or_create_by(ticker:'ALBO')
auph = Stock.find_or_create_by(ticker:'AUPH')
crbp = Stock.find_or_create_by(ticker:'CRBP')
ebio = Stock.find_or_create_by(ticker:'EBIO')
nvax = Stock.find_or_create_by(ticker:'NVAX')
regn = Stock.find_or_create_by(ticker:'REGN')
mcrb = Stock.find_or_create_by(ticker:'MCRB')
catb = Stock.find_or_create_by(ticker:'CATB')
srpt = Stock.find_or_create_by(ticker:'SRPT')
aniik = Stock.find_or_create_by(ticker:'ANIIK')
shpg = Stock.find_or_create_by(ticker:'SHPG')
mack = Stock.find_or_create_by(ticker:'MACK')
sgen = Stock.find_or_create_by(ticker:'SGEN')
exel = Stock.find_or_create_by(ticker:'EXEL')
clvs = Stock.find_or_create_by(ticker:'CLVS')
kite = Stock.find_or_create_by(ticker:'KITE')
vvus  = Stock.find_or_create_by(ticker:'VVUS')
gen = Stock.find_or_create_by(ticker:'GEN')
bstc = Stock.find_or_create_by(ticker:'BSTC')
zyne = Stock.find_or_create_by(ticker:'ZYNE')
cala = Stock.find_or_create_by(ticker:'CALA')
nviv = Stock.find_or_create_by(ticker:'NVIV')
xbit = Stock.find_or_create_by(ticker:'XBIT')
blue = Stock.find_or_create_by(ticker:'BLUE')
agio = Stock.find_or_create_by(ticker:'AGIO')
alny = Stock.find_or_create_by(ticker:'ALNY')
arry = Stock.find_or_create_by(ticker:'ARRY')

#COMPANIES
Company.find_or_create_by(stock_id:acad.id, name:'Acadia Pharmaceuticals', address:'3611 Valley Centre Drive, Suite 300 San Diego, CA 92130',url:'http://www.acadia-pharm.com/contact/')
Company.find_or_create_by(stock_id:albo.id, name:'Albireo', address:'50 Milk Street, 16th floorBoston, MA 02109v',url:'http://www.albireopharma.com/')
Company.find_or_create_by(stock_id:auph.id, name:'Aurinia pharmaceuticals', address:'#1203-4464 Markham Street Victoria BC  V8Z 7X8 Canada',url:'http://www.auriniapharma.com/contact')
Company.find_or_create_by(name:'Boston Therapeutics', address:'1750 Elm St #103, Manchester, NH 03104',url:'http://www.bostonti.com/')
Company.find_or_create_by(stock_id:crbp.id, name:'Corbus Pharmaceuticals Inc', address:'100 River Ridge Drive Suite 103 Norwood, MA 02062',url:'http://www.corbuspharma.com/')
Company.find_or_create_by(stock_id:nvax.id, name:'Novavax', address:'20 Firstfield Road, Gaithersburg, MD 2087, USA',url:'http://novavax.com/')
Company.find_or_create_by(stock_id:regn.id, name:'Regeneron Pharmaceuticals', address:'',url:'https://www.regeneron.com/')
Company.find_or_create_by(stock_id:mcrb.id, name:'Seres Therapeutics', address:'200 Sidney St, Cambridge, MA 02139',url:'http://www.serestherapeutics.com/')
Company.find_or_create_by(stock_id:catb.id, name:'Catabasis Pharmaceuticals', address:'One Kendall Square, 1 Kendall Square B14202, Cambridge, MA 02139',url:'http://www.catabasis.com/')
Company.find_or_create_by(stock_id:srpt.id, name:'Sarepta Therapeutics Inc', address:'215 First St, Cambridge, MA 02142',url:'https://www.sarepta.com/')
Company.find_or_create_by(stock_id:arry.id, name:'Ariad Pharmaceuticals', address:'125 Binney St, Cambridge, MA 02142',url:'http://www.ariad.com/')
Company.find_or_create_by(stock_id:aniik.id, name:'Anika Therapeutics Inc', address:'32 Wiggins Ave, Bedford, MA 01730',url:'http://www.anikatherapeutics.com/')
Company.find_or_create_by(stock_id:ebio.id, name:'Eleven Biotherapeutics', address:'215 First St, Cambridge, MA 02142',url:'http://www.elevenbio.com/')
Company.find_or_create_by(stock_id:shpg.id, name:'Shire pharmaceuticals', address:'Zählerweg 10 6300 Zug',url:'https://www.shire.com/')
Company.find_or_create_by(stock_id:mack.id, name:'Merrimack pharmaceuticals', address:'ne Kendall Square, 1 Kendall Square B7201, Cambridge, MA 02139',url:'http://www.merrimack.com/')
Company.find_or_create_by(name:'Genentech', address:'Genentech, Inc.,1 DNA Way, South San Francisco, CA 94080',url:'https://www.gene.com/')
Company.find_or_create_by(name:'Biogen', address:'225 Binney Street ,Cambridge, MA 02142',url:'https://www.biogen.com/en_us/home.html')
Company.find_or_create_by(stock_id:sgen.id, name:'Seattle Genetics', address:'21717 - 30th Drive S.E., Building 3, Bothell, WA 98021',url:'http://www.seattlegenetics.com/')
Company.find_or_create_by(stock_id:exel.id, name:'Exelixis', address:'210 East Grand Avenue  So. San Francisco, CA 94080',url:'http://www.exelixis.com/')
Company.find_or_create_by(stock_id:clvs.id, name:'Clovis Oncology', address:'5500 Flatiron Parkway, Boulder, CO 80301',url:'http://clovisoncology.com/')
Company.find_or_create_by(stock_id:kite.id, name:'Kite Pharma, Inc.', address:'2225 Colorado Avenue, Santa Monica, CA 90404',url:'http://kitepharma.com/')
Company.find_or_create_by(stock_id:vvus.id, name:'Vivus, Inc.', address:'900 E. Hamilton Avenue, Suite 550, Campbell, CA 95008, USA',url:'http://www.vivus.com/')
Company.find_or_create_by(stock_id:gen.id, name:'GenMab', address:'Bredgade 34E, 1260 Copenhagen K, Denmark',url:'http://www.genmab.com/')
Company.find_or_create_by(stock_id:bstc.id, name:'BioSpecifics Technologies Corporation', address:'35  Wilbur St, Lynbrook, NY 11563',url:'http://www.biospecifics.com/')
Company.find_or_create_by(stock_id:zyne.id, name:'Zynerba Pharmaceuticals', address:'80 W. Lancaster AvenueSuite 300 Devon, PA 19333',url:'http://zynerba.com/')
Company.find_or_create_by(stock_id:cala.id, name:'Calithera Biosciences', address:'343 Oyster Point Blvd., Suite 200, South San Francisco, CA 94080',url:'http://www.calithera.com/')
Company.find_or_create_by(stock_id:nviv.id, name:'InVivo Therapeutics', address:'1 Kendall Sq # B14402, Cambridge, MA 02139',url:'http://www.invivotherapeutics.com/')
Company.find_or_create_by(stock_id:xbit.id, name:'XBiotech', address:'8201 E Riverside Dr, Austin, TX 78744',url:'http://www.xbiotech.com/')
Company.find_or_create_by(stock_id:blue.id, name:'Bluebird Bio', address:'150 Second St, Cambridge, MA 02141',url:'https://www.bluebirdbio.com/')
Company.find_or_create_by(stock_id:agio.id, name:'Agios Pharmaceuticals, Inc.', address:'88 Sidney St, Cambridge, MA 02139',url:'www.agios.com/')
Company.find_or_create_by(stock_id:alny.id, name:'Alnylam Pharmaceuticals, Inc.', address:'300 Third St #3, Cambridge, MA 02142',url:'www.alnylam.com/')

