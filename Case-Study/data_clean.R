
#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
#setwd("~/Desktop/spine-surgery-analytics-de7d8319fa38b6c08b5fa067151d67c79bae0340")
data <- read.csv('QODPatientLumbarDefo_DATA_2018-08-10_1305.csv')

#Setting Labels


####################################################################################################
#
# Labelling
#
####################################################################################################

#source("QODPatientLumbarDefo_R_2018-08-10_1305.r")

# #Clear existing data and graphics
# rm(list=ls())
# graphics.off()
# #Load Hmisc library
# library(Hmisc)
# #Read Data
# data=read.csv('/Users/micsan/Documents/PhD/Backup/projects/SPINE/spine-surgery-analytics/QODPatientLumbarDefo_DATA_2018-08-10_1305.csv')
# #Setting Labels

label(data$pt_study_id)="Patient Study ID"
label(data$redcap_event_name)="Event Name"
label(data$pt_dob)="Date of birth"
label(data$age_entered)="Age"
label(data$pgender)="Gender"
label(data$lumbar_deformity)="Please check  lumbar or deformity"
label(data$excl_specific_lumbar_dx___1)="Reason(s) patient excluded (check all that apply) (choice=Deformity (including scoliosis that is documented as > 20 degrees, i.e. moderate or severe))"
label(data$excl_specific_lumbar_dx___2)="Reason(s) patient excluded (check all that apply) (choice=Spondylolisthesis - Grade 2,3,4, or 5 (25% or greater spondylolisthesis))"
label(data$excl_specific_lumbar_dx___4)="Reason(s) patient excluded (check all that apply) (choice=Ossified Posterior Longitudinal Ligament (OPLL))"
label(data$excl_specific_lumbar_dx___6)="Reason(s) patient excluded (check all that apply) (choice=Previous or current sacroiliac (SI) joint fusion)"
label(data$excl_specific_lumbar_dx___11)="Reason(s) patient excluded (check all that apply) (choice=Excluded surgical procedure/devices (see Tables 1 and 2 in manual))"
label(data$excl_specific_lumbar_dx___12)="Reason(s) patient excluded (check all that apply) (choice=Neurological paralysis due to pre-existing brain or spinal disease or injury)"
label(data$excl_specific_lumbar_dx___13)="Reason(s) patient excluded (check all that apply) (choice=Chronic Regional Pain Syndrome (CRPS))"
label(data$excl_specific_lumbar_dx___14)="Reason(s) patient excluded (check all that apply) (choice=Severe cognitive or psychiatric impairment)"
label(data$excl_specific_lumbar_dx___15)="Reason(s) patient excluded (check all that apply) (choice=Documented severe peripheral neuropathy or primary neuropathy)"
label(data$six_cycle_exclusion)="Reason patient excluded"
label(data$deformity_exclusion___1)="Reason(s) patient excluded (check all that apply) (choice=Excluded surgical procedure/devices (see Tables 1 and 2 in manual))"
label(data$deformity_exclusion___2)="Reason(s) patient excluded (check all that apply) (choice=Neurological paralysis due to pre-existing brain or spinal disease or injury)"
label(data$deformity_exclusion___3)="Reason(s) patient excluded (check all that apply) (choice=Chronic Regional Pain Syndrome (CRPS))"
label(data$deformity_exclusion___4)="Reason(s) patient excluded (check all that apply) (choice=Severe cognitive or psychiatric impairment)"
label(data$deformity_exclusion___5)="Reason(s) patient excluded (check all that apply) (choice=Documented severe peripheral neuropathy or primary neuropathy)"
label(data$primary_revision)="Please check Primary or Revision"
label(data$principal_spine_diagnosis___3)="Principal spine diagnosis (check all that are being corrected during surgery) (choice=Lumbar spondylolisthesis (grade 1))"
label(data$principal_spine_diagnosis___1)="Principal spine diagnosis (check all that are being corrected during surgery) (choice=Symptomatic lumbar disc herniation)"
label(data$principal_spine_diagnosis___4)="Principal spine diagnosis (check all that are being corrected during surgery) (choice=Lumbar stenosis)"
label(data$principal_spine_diagnosis___5)="Principal spine diagnosis (check all that are being corrected during surgery) (choice=Lumbar adjacent segment disease)"
label(data$principal_spine_diagnosis___6)="Principal spine diagnosis (check all that are being corrected during surgery) (choice=Single-level symptomatic mechanical disc collapse)"
label(data$principal_spine_diagnosis___9)="Principal spine diagnosis (check all that are being corrected during surgery) (choice=Pseudoarthrosis)"
label(data$deformity_dx___1)="Deformity diagnosis (choice=Spondylolisthesis)"
label(data$deformity_dx___2)="Deformity diagnosis (choice=Scoliosis)"
label(data$deformity_dx___3)="Deformity diagnosis (choice=Kyphosis)"
label(data$deformity_dx___4)="Deformity diagnosis (choice=Stenosis)"
label(data$deformity_dx___5)="Deformity diagnosis (choice=Adjacent segment disease)"
label(data$deformity_dx___7)="Deformity diagnosis (choice=Disc herniation)"
label(data$deformity_dx___9)="Deformity diagnosis (choice=Pseudarthrosis)"
label(data$grade_listhesis)="Grade of listhesis"
label(data$degree_scoliosis)="Degree of scoliosis"
label(data$type_stenosis___1)="Type of stenosis (check all that apply) (choice=Lateral recess or foraminal region compression)"
label(data$type_stenosis___2)="Type of stenosis (check all that apply) (choice=Central canal region compression)"
label(data$type_stenosis___3)="Type of stenosis (check all that apply) (choice=Not documented)"
label(data$central_canal_compress)="Central canal region compression"
label(data$lateral_recess)="Lateral recess or foraminal region compression"
label(data$discectomy_op_level)="Prior discectomy of operative level"
label(data$disc_ht_loss)="Extent of disc height loss"
label(data$coronal_shift)="Coronal shift > 4 cm"
label(data$sagittal_vertical_axis)="Sagittal vertical axis > 4 cm"
label(data$failure_brace_req_op)="Was a brace used?"
label(data$brace_months)="How many months did they use the brace?"
label(data$surgeon)="Surgeon"
#label(data$surg_location)="Hospital Name Where Surgery Performed"
label(data$qcdr_participant)="Is this patient included for participation in the QCDR?  (Qualified Clinical Data Registry) "
label(data$height_units)="Height units"
label(data$pt_height_in)="Height in"
label(data$pt_height_cm)="Height cm"
label(data$weight_units)="Weight units"
label(data$pt_wt_lb)="Weight lb"
label(data$pt_wt_kg)="Weight kg"
label(data$insurance1)="Insurance payer"
label(data$pt_state)="State"
label(data$pt_zipcode)="Zip code"
label(data$pt_email)="Email"
label(data$excluded___1)="Reason(s) patient excluded  (check all that apply) (choice=Spinal infection (including osteomyelitis, TB, discitis))"
label(data$excluded___2)="Reason(s) patient excluded  (check all that apply) (choice=Tumor)"
label(data$excluded___3)="Reason(s) patient excluded  (check all that apply) (choice=Spine fracture or spine traumatic dislocation)"
label(data$excluded___5)="Reason(s) patient excluded  (check all that apply) (choice=Incarceration (prisoner))"
label(data$excluded___6)="Reason(s) patient excluded  (check all that apply) (choice=Hospital/facility/surgeon is not a participant)"
label(data$excluded___7)="Reason(s) patient excluded  (check all that apply) (choice=Refused IRB informed consent)"
label(data$excluded___9)="Reason(s) patient excluded  (check all that apply) (choice=Age < 18 years)"
label(data$administrative_exclusions)="Administrative exclusions"
label(data$date_review_enroll_form)="Date of review"
label(data$date_verify_enroll_form)="Date of verification"
label(data$patient_enrollment_complete)="Complete?"
label(data$any_major_surgery_in_the_p)="Prior surgery for cervical spine, lumbar spine, thoracic spine, hip, or knee"
label(data$major_surgeries___1)="Surgeries (check all that apply) (choice=Cervical)"
label(data$major_surgeries___2)="Surgeries (check all that apply) (choice=Thoracolumbar (lumbar or thoracic))"
label(data$major_surgeries___3)="Surgeries (check all that apply) (choice=Hip)"
label(data$major_surgeries___4)="Surgeries (check all that apply) (choice=Knee)"
label(data$smoking_status)="Is the patient a current smoker (i.e., smoked in the last 30-days) and if so, how often:"
label(data$smoking_cessation)="Documentation for smoking cessation for current smoking"
label(data$diabetes)="Diabetes"
label(data$cad)="Coronary Artery Disease (CAD)"
label(data$pvd)="Peripheral Vascular Disease (PVD)"
label(data$anxiety)="Anxiety disorder"
label(data$depression)="Depression disorder"
label(data$osteoarthritis)="Arthritis of major joint (hip, shoulder, or knee only)"
label(data$chronic_renal_dis)="Chronic renal disease"
label(data$copd)="Chronic pulmonary disease (i.e. COPD, emphysema)"
label(data$osteoporosis)="Osteoporosis"
label(data$parkinsons)="Parkinsons disease"
label(data$multiple_sclerosis)="Multiple Sclerosis (MS)"
label(data$pain)="Pain"
label(data$weakness)="Weakness"
label(data$numbness)="Numbness"
label(data$predominant_symptom)="Predominant symptom (primary complaint)"
label(data$dominant_symptom1)="What was the predominant location of symptom"
label(data$motor_def2)="Did patient have any motor deficits related to the spine diagnosis"
label(data$ambulation)="Ambulation is:"
label(data$neurogenic_claudication)="Neurogenic Claudication"
label(data$symptom_duration2)="Duration of associated spine symptoms (months)"
label(data$anti_coagulation)="Is the patient taking any blood thinner (anti-coagulation or antiplatelet) medication"
label(data$pain_medication)="Is the patient taking any medication for pain?"
label(data$pain_meds___1)="Medications (check all that apply) (choice=Opioid/Narcotic)"
label(data$pain_meds___2)="Medications (check all that apply) (choice=Epidural/IV (within last 3 months))"
label(data$pain_meds___3)="Medications (check all that apply) (choice=NSAID)"
label(data$pain_meds___4)="Medications (check all that apply) (choice=Other)"
label(data$time_on_pain_meds)="How long has the patient been on narcotic pain medication?"
label(data$dexa_hip)="Denistometry (DEXA/DXA/Bone density) of the hip"
label(data$hip_score)="T-score average"
label(data$dexa_wrist)="Denistometry (DEXA/DXA/Bone density) of the Wrist"
label(data$wrist_score)="T-score average"
label(data$date_history_review)="Date of review"
label(data$date_history_verify)="Date of verification"
label(data$patient_history_complete)="Complete?"
label(data$date_baseline_int)="Date of baseline interview"
label(data$base_interview_admin)="Administration"
label(data$ptethnicity)="Ethnicity"
label(data$prace___1)="Race (check all that apply) (choice=American Indian or Alaska Native)"
label(data$prace___2)="Race (check all that apply) (choice=Asian)"
label(data$prace___3)="Race (check all that apply) (choice=Black or African American)"
label(data$prace___4)="Race (check all that apply) (choice=Native Hawaiian or Other Pacific Islander)"
label(data$prace___5)="Race (check all that apply) (choice=White)"
label(data$prace___6)="Race (check all that apply) (choice=Other)"
label(data$prace___7)="Race (check all that apply) (choice=Prefer not to answer)"
label(data$pt_education_level)="Level of education"
label(data$workers_comp)="Workers compensation claim"
label(data$liability_claim1)="Liability or disability insurance claim"
label(data$employment)="Current employment status (employment means either paid employee or self-employed)"
label(data$full_part_time)="Employment"
label(data$unemployed)="Unemployed"
label(data$disability_reason)="If employed but not working or unemployed on disability, is it due to"
label(data$pre_illness_work2)="Describe your occupation"
label(data$plan_return_work)="Do you plan to return to work after your surgery?"
label(data$activity_out_home)="Did you participate in activities outside the home before spine problems (i.e. gardening, golf, walking, cycling, volunteering)?"
label(data$activity_desc)="Describe your activity"
label(data$activity_inside_home)="Did you participate in activities inside the home before spine problems (i.e. vacuuming, cooking, general housework)?"
label(data$activity_desc2)="Describe your activity"
label(data$patient_base_int_status)="Patient interview status"
label(data$date_base_int_review)="Date of review"
label(data$date_bas_int_verify)="Date of verification"
label(data$patient_baseline_interview_complete)="Complete?"
label(data$asa_grade)="ASA Grade (per anesthesia operative report)"
label(data$prophylactic_antibiotics)="Were prophylactic antibiotics given (or ordered to be given) prior to surgical incision or intraoperatively? (QCDR related)"
label(data$med_reas_documented)="Are medical reasons for not starting or giving prophylactic antibiotics documented? (QCDR related)"
label(data$antibiotics_stopped)="Were perioperative antibiotics stopped (or ordered to be discontinued) within 24 hours after surgery end time? (QCDR related)"
label(data$med_res_not_stopped)="Are medical reasons for not stopping documented? (QCDR related)"
label(data$surgical_approach)="Surgical Approach"
label(data$first_stage)="First surgery performed"
label(data$second_stage)="Second surgery performed"
label(data$same_or_session)="Was the second procedure performed during the same OR session/visit?"
label(data$min_invasive_interbody)="Minimally invasive (through a tubular retractor)"
label(data$laminectomy_performed)="Was a laminectomy or laminotomy performed?"
label(data$laminectomy_level)="Number of levels (i.e. L4 - S1 = 3 levels) "
label(data$laminectomy_level_perform___1)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T1)"
label(data$laminectomy_level_perform___2)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T2)"
label(data$laminectomy_level_perform___3)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T3)"
label(data$laminectomy_level_perform___4)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T4)"
label(data$laminectomy_level_perform___5)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T5)"
label(data$laminectomy_level_perform___6)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T6)"
label(data$laminectomy_level_perform___7)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T7)"
label(data$laminectomy_level_perform___8)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T8)"
label(data$laminectomy_level_perform___9)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T9)"
label(data$laminectomy_level_perform___10)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T10)"
label(data$laminectomy_level_perform___11)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T11)"
label(data$laminectomy_level_perform___12)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T12)"
label(data$laminectomy_level_perform___13)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L1)"
label(data$laminectomy_level_perform___14)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L2)"
label(data$laminectomy_level_perform___15)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L3)"
label(data$laminectomy_level_perform___16)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L4)"
label(data$laminectomy_level_perform___17)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L5)"
label(data$laminectomy_level_perform___18)="Laminectomy/laminotomy levels performed (check all that apply) (choice=S1)"
label(data$laminectomy_level_perform___19)="Laminectomy/laminotomy levels performed (check all that apply) (choice=S2)"
label(data$arthrodesis_performed)="Was arthrodesis/fusion performed?"
label(data$arthrodesis_levels)="Number of motion segments fused  (i.e. L4 - S1 = 2 segments)"
label(data$arthrodesis_level_perform___1)="Arthrodesis/fusion levels performed (check all that apply) (choice=T1)"
label(data$arthrodesis_level_perform___2)="Arthrodesis/fusion levels performed (check all that apply) (choice=T2)"
label(data$arthrodesis_level_perform___3)="Arthrodesis/fusion levels performed (check all that apply) (choice=T3)"
label(data$arthrodesis_level_perform___4)="Arthrodesis/fusion levels performed (check all that apply) (choice=T4)"
label(data$arthrodesis_level_perform___5)="Arthrodesis/fusion levels performed (check all that apply) (choice=T5)"
label(data$arthrodesis_level_perform___6)="Arthrodesis/fusion levels performed (check all that apply) (choice=T6)"
label(data$arthrodesis_level_perform___7)="Arthrodesis/fusion levels performed (check all that apply) (choice=T7)"
label(data$arthrodesis_level_perform___8)="Arthrodesis/fusion levels performed (check all that apply) (choice=T8)"
label(data$arthrodesis_level_perform___9)="Arthrodesis/fusion levels performed (check all that apply) (choice=T9)"
label(data$arthrodesis_level_perform___10)="Arthrodesis/fusion levels performed (check all that apply) (choice=T10)"
label(data$arthrodesis_level_perform___11)="Arthrodesis/fusion levels performed (check all that apply) (choice=T11)"
label(data$arthrodesis_level_perform___12)="Arthrodesis/fusion levels performed (check all that apply) (choice=T12)"
label(data$arthrodesis_level_perform___13)="Arthrodesis/fusion levels performed (check all that apply) (choice=L1)"
label(data$arthrodesis_level_perform___14)="Arthrodesis/fusion levels performed (check all that apply) (choice=L2)"
label(data$arthrodesis_level_perform___15)="Arthrodesis/fusion levels performed (check all that apply) (choice=L3)"
label(data$arthrodesis_level_perform___16)="Arthrodesis/fusion levels performed (check all that apply) (choice=L4)"
label(data$arthrodesis_level_perform___17)="Arthrodesis/fusion levels performed (check all that apply) (choice=L5)"
label(data$arthrodesis_level_perform___18)="Arthrodesis/fusion levels performed (check all that apply) (choice=S1)"
label(data$arthrodesis_level_perform___19)="Arthrodesis/fusion levels performed (check all that apply) (choice=S2)"
label(data$interbody_graft_1)="Interbody graft"
label(data$interbody_graft1_type)="Type of interbody graft"
label(data$interbody_graft1_struct_type___1)="Type of cage (check all that apply) (choice=Polyetheretherketone (PEEK) spacer)"
label(data$interbody_graft1_struct_type___2)="Type of cage (check all that apply) (choice=Structural bone graft)"
label(data$interbody_graft1_struct_type___3)="Type of cage (check all that apply) (choice=Metal)"
label(data$interbody_graft1_struct_type___4)="Type of cage (check all that apply) (choice=Carbon fiber)"
label(data$interbody_graft1_struct_type___5)="Type of cage (check all that apply) (choice=Other)"
label(data$interbody_graft1_biologic_type___1)="Type of graft (check all that apply) (choice=Bone Morphogenic Protein (BMP))"
label(data$interbody_graft1_biologic_type___2)="Type of graft (check all that apply) (choice=Demineralized Bone Matrix (DBM))"
label(data$interbody_graft1_biologic_type___3)="Type of graft (check all that apply) (choice=Allograft (e.g. cortico-cancellous bone chip, cancellous bone, donor bone graft, cadaveric graft))"
label(data$interbody_graft1_biologic_type___4)="Type of graft (check all that apply) (choice=Autograft)"
label(data$interbody_graft1_biologic_type___5)="Type of graft (check all that apply) (choice=Ceramic/bioactive glass)"
label(data$interbody_graft1_biologic_type___6)="Type of graft (check all that apply) (choice=Cell based therapy (trinity))"
label(data$interbody_graft1_biologic_type___7)="Type of graft (check all that apply) (choice=Other)"
label(data$corpectomy)="Was corpectomy performed?"
label(data$corpectomy_levels)="Number of levels (i.e. L1 - L3 = 3 levels)  "
label(data$corpectomy_level_perform___1)="Corpectomy levels performed (check all that apply) (choice=T1)"
label(data$corpectomy_level_perform___2)="Corpectomy levels performed (check all that apply) (choice=T2)"
label(data$corpectomy_level_perform___3)="Corpectomy levels performed (check all that apply) (choice=T3)"
label(data$corpectomy_level_perform___4)="Corpectomy levels performed (check all that apply) (choice=T4)"
label(data$corpectomy_level_perform___5)="Corpectomy levels performed (check all that apply) (choice=T5)"
label(data$corpectomy_level_perform___6)="Corpectomy levels performed (check all that apply) (choice=T6)"
label(data$corpectomy_level_perform___7)="Corpectomy levels performed (check all that apply) (choice=T7)"
label(data$corpectomy_level_perform___8)="Corpectomy levels performed (check all that apply) (choice=T8)"
label(data$corpectomy_level_perform___9)="Corpectomy levels performed (check all that apply) (choice=T9)"
label(data$corpectomy_level_perform___10)="Corpectomy levels performed (check all that apply) (choice=T10)"
label(data$corpectomy_level_perform___11)="Corpectomy levels performed (check all that apply) (choice=T11)"
label(data$corpectomy_level_perform___12)="Corpectomy levels performed (check all that apply) (choice=T12)"
label(data$corpectomy_level_perform___13)="Corpectomy levels performed (check all that apply) (choice=L1)"
label(data$corpectomy_level_perform___14)="Corpectomy levels performed (check all that apply) (choice=L2)"
label(data$corpectomy_level_perform___15)="Corpectomy levels performed (check all that apply) (choice=L3)"
label(data$corpectomy_level_perform___16)="Corpectomy levels performed (check all that apply) (choice=L4)"
label(data$corpectomy_level_perform___17)="Corpectomy levels performed (check all that apply) (choice=L5)"
label(data$corpectomy_level_perform___18)="Corpectomy levels performed (check all that apply) (choice=S1)"
label(data$corpectomy_level_perform___19)="Corpectomy levels performed (check all that apply) (choice=S2)"
label(data$osteotomy_performed)="Was osteotomy performed?"
label(data$ostoe_type_spo)="SPO - Smith-Petersen Osteotomy  "
label(data$osteotomy_levels_spo___1)="SPO levels performed (check all that apply) (choice=T1)"
label(data$osteotomy_levels_spo___2)="SPO levels performed (check all that apply) (choice=T2)"
label(data$osteotomy_levels_spo___3)="SPO levels performed (check all that apply) (choice=T3)"
label(data$osteotomy_levels_spo___4)="SPO levels performed (check all that apply) (choice=T4)"
label(data$osteotomy_levels_spo___5)="SPO levels performed (check all that apply) (choice=T5)"
label(data$osteotomy_levels_spo___6)="SPO levels performed (check all that apply) (choice=T6)"
label(data$osteotomy_levels_spo___7)="SPO levels performed (check all that apply) (choice=T7)"
label(data$osteotomy_levels_spo___8)="SPO levels performed (check all that apply) (choice=T8)"
label(data$osteotomy_levels_spo___9)="SPO levels performed (check all that apply) (choice=T9)"
label(data$osteotomy_levels_spo___10)="SPO levels performed (check all that apply) (choice=T10)"
label(data$osteotomy_levels_spo___11)="SPO levels performed (check all that apply) (choice=T11)"
label(data$osteotomy_levels_spo___12)="SPO levels performed (check all that apply) (choice=T12)"
label(data$osteotomy_levels_spo___13)="SPO levels performed (check all that apply) (choice=L1)"
label(data$osteotomy_levels_spo___14)="SPO levels performed (check all that apply) (choice=L2)"
label(data$osteotomy_levels_spo___15)="SPO levels performed (check all that apply) (choice=L3)"
label(data$osteotomy_levels_spo___16)="SPO levels performed (check all that apply) (choice=L4)"
label(data$osteotomy_levels_spo___17)="SPO levels performed (check all that apply) (choice=L5)"
label(data$osteotomy_levels_spo___19)="SPO levels performed (check all that apply) (choice=S1)"
label(data$osteotomy_levels_spo___20)="SPO levels performed (check all that apply) (choice=S2)"
label(data$osteo_type_pso)="PSO - Pedicle Subtraction Osteotomy"
label(data$osteotomy_levels_pso___1)="PSO levels performed (check all that apply) (choice=T1)"
label(data$osteotomy_levels_pso___2)="PSO levels performed (check all that apply) (choice=T2)"
label(data$osteotomy_levels_pso___3)="PSO levels performed (check all that apply) (choice=T3)"
label(data$osteotomy_levels_pso___4)="PSO levels performed (check all that apply) (choice=T4)"
label(data$osteotomy_levels_pso___5)="PSO levels performed (check all that apply) (choice=T5)"
label(data$osteotomy_levels_pso___6)="PSO levels performed (check all that apply) (choice=T6)"
label(data$osteotomy_levels_pso___7)="PSO levels performed (check all that apply) (choice=T7)"
label(data$osteotomy_levels_pso___8)="PSO levels performed (check all that apply) (choice=T8)"
label(data$osteotomy_levels_pso___9)="PSO levels performed (check all that apply) (choice=T9)"
label(data$osteotomy_levels_pso___10)="PSO levels performed (check all that apply) (choice=T10)"
label(data$osteotomy_levels_pso___11)="PSO levels performed (check all that apply) (choice=T11)"
label(data$osteotomy_levels_pso___12)="PSO levels performed (check all that apply) (choice=T12)"
label(data$osteotomy_levels_pso___13)="PSO levels performed (check all that apply) (choice=L1)"
label(data$osteotomy_levels_pso___14)="PSO levels performed (check all that apply) (choice=L2)"
label(data$osteotomy_levels_pso___15)="PSO levels performed (check all that apply) (choice=L3)"
label(data$osteotomy_levels_pso___16)="PSO levels performed (check all that apply) (choice=L4)"
label(data$osteotomy_levels_pso___17)="PSO levels performed (check all that apply) (choice=L5)"
label(data$osteotomy_levels_pso___19)="PSO levels performed (check all that apply) (choice=S1)"
label(data$osteotomy_levels_pso___20)="PSO levels performed (check all that apply) (choice=S2)"
label(data$osteo_type_vcr)="VCR - Vertebral Column Resection"
label(data$osteotomy_levels_vcr___1)="VCR levels performed (check all that apply) (choice=T1)"
label(data$osteotomy_levels_vcr___2)="VCR levels performed (check all that apply) (choice=T2)"
label(data$osteotomy_levels_vcr___3)="VCR levels performed (check all that apply) (choice=T3)"
label(data$osteotomy_levels_vcr___4)="VCR levels performed (check all that apply) (choice=T4)"
label(data$osteotomy_levels_vcr___5)="VCR levels performed (check all that apply) (choice=T5)"
label(data$osteotomy_levels_vcr___6)="VCR levels performed (check all that apply) (choice=T6)"
label(data$osteotomy_levels_vcr___7)="VCR levels performed (check all that apply) (choice=T7)"
label(data$osteotomy_levels_vcr___8)="VCR levels performed (check all that apply) (choice=T8)"
label(data$osteotomy_levels_vcr___9)="VCR levels performed (check all that apply) (choice=T9)"
label(data$osteotomy_levels_vcr___10)="VCR levels performed (check all that apply) (choice=T10)"
label(data$osteotomy_levels_vcr___11)="VCR levels performed (check all that apply) (choice=T11)"
label(data$osteotomy_levels_vcr___12)="VCR levels performed (check all that apply) (choice=T12)"
label(data$osteotomy_levels_vcr___13)="VCR levels performed (check all that apply) (choice=L1)"
label(data$osteotomy_levels_vcr___14)="VCR levels performed (check all that apply) (choice=L2)"
label(data$osteotomy_levels_vcr___15)="VCR levels performed (check all that apply) (choice=L3)"
label(data$osteotomy_levels_vcr___16)="VCR levels performed (check all that apply) (choice=L4)"
label(data$osteotomy_levels_vcr___17)="VCR levels performed (check all that apply) (choice=L5)"
label(data$osteotomy_levels_vcr___19)="VCR levels performed (check all that apply) (choice=S1)"
label(data$osteotomy_levels_vcr___20)="VCR levels performed (check all that apply) (choice=S2)"
label(data$interbody1_instrum)="Instrumentation"
label(data$percutaneuos_interbody)="Percutaneous screw "
label(data$pedicle_screw1)="Open pedicle screw "
label(data$other_instrumentation1)="Other instrumentation"
label(data$min_invasive_interbod2)="Minimally invasive (through a tubular retractor)"
label(data$laminectomy_performed2)="Was a laminectomy or laminotomy performed?"
label(data$laminectomy_level2)="Number of levels (i.e. L4 - S1 = 3 levels) "
label(data$laminectomy_level_perform2___1)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T1)"
label(data$laminectomy_level_perform2___2)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T2)"
label(data$laminectomy_level_perform2___3)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T3)"
label(data$laminectomy_level_perform2___4)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T4)"
label(data$laminectomy_level_perform2___5)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T5)"
label(data$laminectomy_level_perform2___6)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T6)"
label(data$laminectomy_level_perform2___7)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T7)"
label(data$laminectomy_level_perform2___8)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T8)"
label(data$laminectomy_level_perform2___9)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T9)"
label(data$laminectomy_level_perform2___10)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T10)"
label(data$laminectomy_level_perform2___11)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T11)"
label(data$laminectomy_level_perform2___12)="Laminectomy/laminotomy levels performed (check all that apply) (choice=T12)"
label(data$laminectomy_level_perform2___13)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L1)"
label(data$laminectomy_level_perform2___14)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L2)"
label(data$laminectomy_level_perform2___15)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L3)"
label(data$laminectomy_level_perform2___16)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L4)"
label(data$laminectomy_level_perform2___17)="Laminectomy/laminotomy levels performed (check all that apply) (choice=L5)"
label(data$laminectomy_level_perform2___19)="Laminectomy/laminotomy levels performed (check all that apply) (choice=S1)"
label(data$laminectomy_level_perform2___20)="Laminectomy/laminotomy levels performed (check all that apply) (choice=S2)"
label(data$arthrodesis2_performed)="Was arthrodesis/fusion performed?"
label(data$arthrodesis2_levels)="Number of motion segments fused (i.e. L4 - S1 = 2 segments)"
label(data$arthrodesis_level_perform2___1)="Arthrodesis/fusion levels performed (check all that apply) (choice=T1)"
label(data$arthrodesis_level_perform2___2)="Arthrodesis/fusion levels performed (check all that apply) (choice=T2)"
label(data$arthrodesis_level_perform2___3)="Arthrodesis/fusion levels performed (check all that apply) (choice=T3)"
label(data$arthrodesis_level_perform2___4)="Arthrodesis/fusion levels performed (check all that apply) (choice=T4)"
label(data$arthrodesis_level_perform2___5)="Arthrodesis/fusion levels performed (check all that apply) (choice=T5)"
label(data$arthrodesis_level_perform2___6)="Arthrodesis/fusion levels performed (check all that apply) (choice=T6)"
label(data$arthrodesis_level_perform2___7)="Arthrodesis/fusion levels performed (check all that apply) (choice=T7)"
label(data$arthrodesis_level_perform2___8)="Arthrodesis/fusion levels performed (check all that apply) (choice=T8)"
label(data$arthrodesis_level_perform2___9)="Arthrodesis/fusion levels performed (check all that apply) (choice=T9)"
label(data$arthrodesis_level_perform2___10)="Arthrodesis/fusion levels performed (check all that apply) (choice=T10)"
label(data$arthrodesis_level_perform2___11)="Arthrodesis/fusion levels performed (check all that apply) (choice=T11)"
label(data$arthrodesis_level_perform2___12)="Arthrodesis/fusion levels performed (check all that apply) (choice=T12)"
label(data$arthrodesis_level_perform2___13)="Arthrodesis/fusion levels performed (check all that apply) (choice=L1)"
label(data$arthrodesis_level_perform2___14)="Arthrodesis/fusion levels performed (check all that apply) (choice=L2)"
label(data$arthrodesis_level_perform2___15)="Arthrodesis/fusion levels performed (check all that apply) (choice=L3)"
label(data$arthrodesis_level_perform2___16)="Arthrodesis/fusion levels performed (check all that apply) (choice=L4)"
label(data$arthrodesis_level_perform2___17)="Arthrodesis/fusion levels performed (check all that apply) (choice=L5)"
label(data$arthrodesis_level_perform2___19)="Arthrodesis/fusion levels performed (check all that apply) (choice=S1)"
label(data$arthrodesis_level_perform2___20)="Arthrodesis/fusion levels performed (check all that apply) (choice=S2)"
label(data$interbody_graft_2)="Interbody graft"
label(data$interbody_graft2_type)="Type of interbody graft"
label(data$interbody_graft2_struct_type___1)="Type of cage (check all that apply) (choice=PEEK spacer (Polyetheretherketone spacer))"
label(data$interbody_graft2_struct_type___2)="Type of cage (check all that apply) (choice=Bone)"
label(data$interbody_graft2_struct_type___3)="Type of cage (check all that apply) (choice=Metal)"
label(data$interbody_graft2_struct_type___4)="Type of cage (check all that apply) (choice=Carbon Fiber)"
label(data$interbody_graft2_struct_type___5)="Type of cage (check all that apply) (choice=Other)"
label(data$interbody_graft2_biol_type___1)="Type of graft (check all that apply) (choice=BMP (Bone Morphogenic Protein))"
label(data$interbody_graft2_biol_type___2)="Type of graft (check all that apply) (choice=DBM (Demineralized bone matrix))"
label(data$interbody_graft2_biol_type___3)="Type of graft (check all that apply) (choice=Allograft)"
label(data$interbody_graft2_biol_type___4)="Type of graft (check all that apply) (choice=Autograft)"
label(data$interbody_graft2_biol_type___5)="Type of graft (check all that apply) (choice=Ceramic/bioactive glass)"
label(data$interbody_graft2_biol_type___6)="Type of graft (check all that apply) (choice=Cell based therapy (trinity))"
label(data$interbody_graft2_biol_type___7)="Type of graft (check all that apply) (choice=Other)"
label(data$corpectomy2_performed)="Was corpectomy performed?"
label(data$corpectomy2_levels)="Number of levels (i.e. L1 - L3 = 3 levels)  "
label(data$corpectomy_level_perform2___1)="Corpectomy levels performed (check all that apply) (choice=T1)"
label(data$corpectomy_level_perform2___2)="Corpectomy levels performed (check all that apply) (choice=T2)"
label(data$corpectomy_level_perform2___3)="Corpectomy levels performed (check all that apply) (choice=T3)"
label(data$corpectomy_level_perform2___4)="Corpectomy levels performed (check all that apply) (choice=T4)"
label(data$corpectomy_level_perform2___5)="Corpectomy levels performed (check all that apply) (choice=T5)"
label(data$corpectomy_level_perform2___6)="Corpectomy levels performed (check all that apply) (choice=T6)"
label(data$corpectomy_level_perform2___7)="Corpectomy levels performed (check all that apply) (choice=T7)"
label(data$corpectomy_level_perform2___8)="Corpectomy levels performed (check all that apply) (choice=T8)"
label(data$corpectomy_level_perform2___9)="Corpectomy levels performed (check all that apply) (choice=T9)"
label(data$corpectomy_level_perform2___10)="Corpectomy levels performed (check all that apply) (choice=T10)"
label(data$corpectomy_level_perform2___11)="Corpectomy levels performed (check all that apply) (choice=T11)"
label(data$corpectomy_level_perform2___12)="Corpectomy levels performed (check all that apply) (choice=T12)"
label(data$corpectomy_level_perform2___13)="Corpectomy levels performed (check all that apply) (choice=L1)"
label(data$corpectomy_level_perform2___14)="Corpectomy levels performed (check all that apply) (choice=L2)"
label(data$corpectomy_level_perform2___15)="Corpectomy levels performed (check all that apply) (choice=L3)"
label(data$corpectomy_level_perform2___16)="Corpectomy levels performed (check all that apply) (choice=L4)"
label(data$corpectomy_level_perform2___17)="Corpectomy levels performed (check all that apply) (choice=L5)"
label(data$corpectomy_level_perform2___18)="Corpectomy levels performed (check all that apply) (choice=S1)"
label(data$corpectomy_level_perform2___19)="Corpectomy levels performed (check all that apply) (choice=S2)"
label(data$osteotomy2_performed)="Was osteotomy performed?"
label(data$osteo2_type_spo)="SPO - Smith-Petersen Osteotomy"
label(data$osteotomy2_levels_spo___1)="SPO levels performed (check all that apply) (choice=T1)"
label(data$osteotomy2_levels_spo___2)="SPO levels performed (check all that apply) (choice=T2)"
label(data$osteotomy2_levels_spo___3)="SPO levels performed (check all that apply) (choice=T3)"
label(data$osteotomy2_levels_spo___4)="SPO levels performed (check all that apply) (choice=T4)"
label(data$osteotomy2_levels_spo___5)="SPO levels performed (check all that apply) (choice=T5)"
label(data$osteotomy2_levels_spo___6)="SPO levels performed (check all that apply) (choice=T6)"
label(data$osteotomy2_levels_spo___7)="SPO levels performed (check all that apply) (choice=T7)"
label(data$osteotomy2_levels_spo___8)="SPO levels performed (check all that apply) (choice=T8)"
label(data$osteotomy2_levels_spo___9)="SPO levels performed (check all that apply) (choice=T9)"
label(data$osteotomy2_levels_spo___10)="SPO levels performed (check all that apply) (choice=T10)"
label(data$osteotomy2_levels_spo___11)="SPO levels performed (check all that apply) (choice=T11)"
label(data$osteotomy2_levels_spo___12)="SPO levels performed (check all that apply) (choice=T12)"
label(data$osteotomy2_levels_spo___13)="SPO levels performed (check all that apply) (choice=L1)"
label(data$osteotomy2_levels_spo___14)="SPO levels performed (check all that apply) (choice=L2)"
label(data$osteotomy2_levels_spo___15)="SPO levels performed (check all that apply) (choice=L3)"
label(data$osteotomy2_levels_spo___16)="SPO levels performed (check all that apply) (choice=L4)"
label(data$osteotomy2_levels_spo___17)="SPO levels performed (check all that apply) (choice=L5)"
label(data$osteotomy2_levels_spo___19)="SPO levels performed (check all that apply) (choice=S1)"
label(data$osteotomy2_levels_spo___20)="SPO levels performed (check all that apply) (choice=S2)"
label(data$osteo2_type_pso)="PSO - Pedicle Subtraction Osteotomy"
label(data$osteotomy2_levels_pso___1)="PSO levels performed (check all that apply) (choice=T1)"
label(data$osteotomy2_levels_pso___2)="PSO levels performed (check all that apply) (choice=T2)"
label(data$osteotomy2_levels_pso___3)="PSO levels performed (check all that apply) (choice=T3)"
label(data$osteotomy2_levels_pso___4)="PSO levels performed (check all that apply) (choice=T4)"
label(data$osteotomy2_levels_pso___5)="PSO levels performed (check all that apply) (choice=T5)"
label(data$osteotomy2_levels_pso___6)="PSO levels performed (check all that apply) (choice=T6)"
label(data$osteotomy2_levels_pso___7)="PSO levels performed (check all that apply) (choice=T7)"
label(data$osteotomy2_levels_pso___8)="PSO levels performed (check all that apply) (choice=T8)"
label(data$osteotomy2_levels_pso___9)="PSO levels performed (check all that apply) (choice=T9)"
label(data$osteotomy2_levels_pso___10)="PSO levels performed (check all that apply) (choice=T10)"
label(data$osteotomy2_levels_pso___11)="PSO levels performed (check all that apply) (choice=T11)"
label(data$osteotomy2_levels_pso___12)="PSO levels performed (check all that apply) (choice=T12)"
label(data$osteotomy2_levels_pso___13)="PSO levels performed (check all that apply) (choice=L1)"
label(data$osteotomy2_levels_pso___14)="PSO levels performed (check all that apply) (choice=L2)"
label(data$osteotomy2_levels_pso___15)="PSO levels performed (check all that apply) (choice=L3)"
label(data$osteotomy2_levels_pso___16)="PSO levels performed (check all that apply) (choice=L4)"
label(data$osteotomy2_levels_pso___17)="PSO levels performed (check all that apply) (choice=L5)"
label(data$osteotomy2_levels_pso___19)="PSO levels performed (check all that apply) (choice=S1)"
label(data$osteotomy2_levels_pso___20)="PSO levels performed (check all that apply) (choice=S2)"
label(data$osteo2_type_vcr)="VCR - Vertebral Column Resection"
label(data$osteotomy2_levels_vcr___1)="VCR levels performed (check all that apply) (choice=T1)"
label(data$osteotomy2_levels_vcr___2)="VCR levels performed (check all that apply) (choice=T2)"
label(data$osteotomy2_levels_vcr___3)="VCR levels performed (check all that apply) (choice=T3)"
label(data$osteotomy2_levels_vcr___4)="VCR levels performed (check all that apply) (choice=T4)"
label(data$osteotomy2_levels_vcr___5)="VCR levels performed (check all that apply) (choice=T5)"
label(data$osteotomy2_levels_vcr___6)="VCR levels performed (check all that apply) (choice=T6)"
label(data$osteotomy2_levels_vcr___7)="VCR levels performed (check all that apply) (choice=T7)"
label(data$osteotomy2_levels_vcr___8)="VCR levels performed (check all that apply) (choice=T8)"
label(data$osteotomy2_levels_vcr___9)="VCR levels performed (check all that apply) (choice=T9)"
label(data$osteotomy2_levels_vcr___10)="VCR levels performed (check all that apply) (choice=T10)"
label(data$osteotomy2_levels_vcr___11)="VCR levels performed (check all that apply) (choice=T11)"
label(data$osteotomy2_levels_vcr___12)="VCR levels performed (check all that apply) (choice=T12)"
label(data$osteotomy2_levels_vcr___13)="VCR levels performed (check all that apply) (choice=L1)"
label(data$osteotomy2_levels_vcr___14)="VCR levels performed (check all that apply) (choice=L2)"
label(data$osteotomy2_levels_vcr___15)="VCR levels performed (check all that apply) (choice=L3)"
label(data$osteotomy2_levels_vcr___16)="VCR levels performed (check all that apply) (choice=L4)"
label(data$osteotomy2_levels_vcr___17)="VCR levels performed (check all that apply) (choice=L5)"
label(data$osteotomy2_levels_vcr___19)="VCR levels performed (check all that apply) (choice=S1)"
label(data$osteotomy2_levels_vcr___20)="VCR levels performed (check all that apply) (choice=S2)"
label(data$interbody2_instrum)="Instrumentation second stage"
label(data$percutaneuos_interbod2)="Percutaneous screw"
label(data$pedicle_screw2)="Open pedicle screw"
label(data$dynamic_stabilization2)="Dynamic stabilization"
label(data$other_instrumentation2)="Other instrumentation"
label(data$est_blood_loss)="Estimated blood loss"
label(data$surgery_start)="Surgery start time"
label(data$surgery_stop)="Surgery stop time"
label(data$length_of_surgery)="Length of surgery (minutes)"
label(data$est_blood_loss2)="Estimated blood loss second surgery"
label(data$surgery_start2)="Second surgery start time"
label(data$surgery_stop2)="Second surgery stop time"
label(data$length_of_surgery2)="Length of second surgery (minutes)"
label(data$date_surgery_review)="Date of review"
label(data$date_surgery_verify)="Date of verification"
label(data$surgery_complete)="Complete?"
label(data$incl_excl_criteria)="Is there a change in the inclusion or exclusion criteria for this patient."
label(data$diagnosis_chart_abstract)="Diagnosis (new chart abstraction shows subsequent patient diagnosis did not meet the baseline diagnosis criteria) "
label(data$procedure_chart_abstract)="Procedure (chart abstraction shows that the patients actual surgical procedure and/or device was one that should exclude the patient)"
label(data$exclusion_chart_abstract)="Exclusion (chart abstraction shows this patient should be excluded, if yes, check the reason(s) below)"
label(data$type_exclusion)="If yes, type of exclusion"
label(data$excluded_30day___1)="Reason(s) Patient Excluded (check all that apply) (choice=Spinal infection (including osteomyelitis, TB, discitis))"
label(data$excluded_30day___2)="Reason(s) Patient Excluded (check all that apply) (choice=Tumor)"
label(data$excluded_30day___3)="Reason(s) Patient Excluded (check all that apply) (choice=Spine fracture or spine traumatic dislocation)"
label(data$excluded_30day___5)="Reason(s) Patient Excluded (check all that apply) (choice=Incarceration (prisoner))"
label(data$excluded_30day___6)="Reason(s) Patient Excluded (check all that apply) (choice=Hospital/facility/surgeon is not a participant)"
label(data$excluded_30day___7)="Reason(s) Patient Excluded (check all that apply) (choice=Refused IRB informed consent)"
label(data$excluded_30day___9)="Reason(s) Patient Excluded (check all that apply) (choice=Age < 18 years)"
label(data$excl_specific_lumbar_dx_30day___1)="Resaon(s) Patient Excluded (check all that apply) (choice=Deformity (including scoliosis that is documented as > 20 degrees, i.e. moderate or severe))"
label(data$excl_specific_lumbar_dx_30day___7)="Resaon(s) Patient Excluded (check all that apply) (choice=Spondylolisthesis - Grade 2,3,4, or 5 (25% or greater spondylolisthesis))"
label(data$excl_specific_lumbar_dx_30day___3)="Resaon(s) Patient Excluded (check all that apply) (choice=Ossified Posterior Longitudinal Ligament (OPLL))"
label(data$excl_specific_lumbar_dx_30day___8)="Resaon(s) Patient Excluded (check all that apply) (choice=Previous or current sacroiliac (SI) joint fusion)"
label(data$excl_specific_lumbar_dx_30day___11)="Resaon(s) Patient Excluded (check all that apply) (choice=Excluded surgical procedure/devices (see Tables 1 and 2 in manual))"
label(data$excl_specific_lumbar_dx_30day___12)="Resaon(s) Patient Excluded (check all that apply) (choice=Neurological paralysis due to pre-existing brain or spinal disease or injury)"
label(data$excl_specific_lumbar_dx_30day___13)="Resaon(s) Patient Excluded (check all that apply) (choice=Chronic Regional Pain Syndrome (CRPS))"
label(data$excl_specific_lumbar_dx_30day___14)="Resaon(s) Patient Excluded (check all that apply) (choice=Severe cognitive or psychiatric impairment)"
label(data$excl_specific_lumbar_dx_30day___15)="Resaon(s) Patient Excluded (check all that apply) (choice=Documented severe peripheral neuropathy or primary neuropathy)"
label(data$six_cycle_30day_excl)="Reason patient excluded"
label(data$deformity_exclusion_30day___1)="Reason(s) patient excluded (check all that apply) (choice=Excluded surgical procedure/devices (see Tables 1 and 2 in manual))"
label(data$deformity_exclusion_30day___2)="Reason(s) patient excluded (check all that apply) (choice=Neurological paralysis due to pre-existing brain or spinal disease or injury)"
label(data$deformity_exclusion_30day___3)="Reason(s) patient excluded (check all that apply) (choice=Chronic Regional Pain Syndrome (CRPS))"
label(data$deformity_exclusion_30day___4)="Reason(s) patient excluded (check all that apply) (choice=Severe cognitive or psychiatric impairment)"
label(data$deformity_exclusion_30day___5)="Reason(s) patient excluded (check all that apply) (choice=Documented severe peripheral neuropathy or primary neuropathy)"
label(data$administrative_exclusions_30day)="Administrative exclusions"
label(data$los_calculated)="Length of stay (calculated)"
label(data$los)="Length of stay"
label(data$place_discharged_to)="Discharge disposition"
label(data$please_specify)="Please specify"
label(data$re_admitted_within_30_days)="Readmitted to hospital within 30 days of surgery"
label(data$reason_for_readmit_30days___1)="Reason for readmit (check all that apply) (choice=Hematoma)"
label(data$reason_for_readmit_30days___2)="Reason for readmit (check all that apply) (choice=CSF leak/dural tear/pseudomenigocele)"
label(data$reason_for_readmit_30days___3)="Reason for readmit (check all that apply) (choice=Surgical Site Infection (SSI))"
label(data$reason_for_readmit_30days___4)="Reason for readmit (check all that apply) (choice=Wound dehiscence)"
label(data$reason_for_readmit_30days___5)="Reason for readmit (check all that apply) (choice=Revised implants)"
label(data$reason_for_readmit_30days___6)="Reason for readmit (check all that apply) (choice=Wrong level surgery)"
label(data$reason_for_readmit_30days___7)="Reason for readmit (check all that apply) (choice=Instrumentation failure)"
label(data$reason_for_readmit_30days___8)="Reason for readmit (check all that apply) (choice=Proximal junctional kyphosis/fracture)"
label(data$reason_for_readmit_30days___11)="Reason for readmit (check all that apply) (choice=New spinal cord deficit)"
label(data$reason_for_readmit_30days___12)="Reason for readmit (check all that apply) (choice=New nerve root deficit)"
label(data$reason_for_readmit_30days___10)="Reason for readmit (check all that apply) (choice=Other)"
label(data$readmit_3months)="Readmitted to hospital within three months of surgery"
label(data$date_readmission_3mths)="Date of readmission"
label(data$reason_for_readmit_3mnth___1)="Reason for readmit (check all that apply) (choice=Hematoma)"
label(data$reason_for_readmit_3mnth___2)="Reason for readmit (check all that apply) (choice=CSF leak/dural tear/pseudomenigocele)"
label(data$reason_for_readmit_3mnth___3)="Reason for readmit (check all that apply) (choice=Surgical Site Infection (SSI))"
label(data$reason_for_readmit_3mnth___4)="Reason for readmit (check all that apply) (choice=Wound dehiscence)"
label(data$reason_for_readmit_3mnth___5)="Reason for readmit (check all that apply) (choice=Revised implants)"
label(data$reason_for_readmit_3mnth___6)="Reason for readmit (check all that apply) (choice=Wrong level surgery)"
label(data$reason_for_readmit_3mnth___7)="Reason for readmit (check all that apply) (choice=Instrumentation failure)"
label(data$reason_for_readmit_3mnth___8)="Reason for readmit (check all that apply) (choice=Proximal junctional kyphosis/fracture)"
label(data$reason_for_readmit_3mnth___11)="Reason for readmit (check all that apply) (choice=New spinal cord deficit)"
label(data$reason_for_readmit_3mnth___12)="Reason for readmit (check all that apply) (choice=New nerve root deficit)"
label(data$reason_for_readmit_3mnth___13)="Reason for readmit (check all that apply) (choice=Pain related to spine surgery)"
label(data$reason_for_readmit_3mnth___14)="Reason for readmit (check all that apply) (choice=Congestive heart failure)"
label(data$reason_for_readmit_3mnth___15)="Reason for readmit (check all that apply) (choice=Myocardial infarction)"
label(data$reason_for_readmit_3mnth___16)="Reason for readmit (check all that apply) (choice=Pneumonia)"
label(data$reason_for_readmit_3mnth___17)="Reason for readmit (check all that apply) (choice=Chronic obstructive pulmonary disease)"
label(data$reason_for_readmit_3mnth___18)="Reason for readmit (check all that apply) (choice=Deep vein thrombosis)"
label(data$reason_for_readmit_3mnth___19)="Reason for readmit (check all that apply) (choice=Pulmonary embolism)"
label(data$reason_for_readmit_3mnth___20)="Reason for readmit (check all that apply) (choice=Urinary tract infection)"
label(data$reason_for_readmit_3mnth___10)="Reason for readmit (check all that apply) (choice=Other)"
label(data$returned_to_or_with_30_day)="Returned to OR within 30 days"
label(data$date_of_return_to_or)="Date of return to OR"
label(data$reason_for_return_to_or___1)="Reason for return to OR (check all that apply) (choice=Hematoma)"
label(data$reason_for_return_to_or___2)="Reason for return to OR (check all that apply) (choice=CSF leak/dural tear/pseudomenigocele)"
label(data$reason_for_return_to_or___3)="Reason for return to OR (check all that apply) (choice=Surgical Site Infection (SSI))"
label(data$reason_for_return_to_or___4)="Reason for return to OR (check all that apply) (choice=Wound dehiscence)"
label(data$reason_for_return_to_or___5)="Reason for return to OR (check all that apply) (choice=Implant revision)"
label(data$reason_for_return_to_or___6)="Reason for return to OR (check all that apply) (choice=Wrong level surgery)"
label(data$reason_for_return_to_or___7)="Reason for return to OR (check all that apply) (choice=Instrumentation failure)"
label(data$reason_for_return_to_or___8)="Reason for return to OR (check all that apply) (choice=Proximal junctional kyphosis/fracture)"
label(data$reason_for_return_to_or___11)="Reason for return to OR (check all that apply) (choice=New spinal cord deficit)"
label(data$reason_for_return_to_or___12)="Reason for return to OR (check all that apply) (choice=New nerve root deficit)"
label(data$reason_for_return_to_or___10)="Reason for return to OR (check all that apply) (choice=Other)"
label(data$patient_died_within_30_day)="Patient died within 30 days of surgery "
label(data$dvt_30day)="Deep Venous Thrombosis (DVT)"
label(data$dvt_timing)="Did the DVT occur"
label(data$pulmonary_embolism_30day)="Pulmonary Embolism (PE)"
label(data$pe_timing)="Did the PE occur"
label(data$new_neuro_deficit)="New neurological deficit"
label(data$new_neuro_def_timing)="Did the new neurological deficit occur"
label(data$mi_30day)="Myocardial infarction (MI)"
label(data$mi_timing)="Did the MI occur"
label(data$uti_30days)="Urinary Tract Infection (UTI)"
label(data$uti_timimg)="Did the UTI occur"
label(data$surgical_site_infect_30day)="Surgical Site Infection (SSI) "
label(data$ssi_timing)="Did the SSI occur"
label(data$tx_ssi)="Treatment for surgical site infection"
label(data$hematoma)="Surgical site hematoma"
label(data$hematoma_timing)="Did the hematoma occur"
label(data$tx_hematoma)="Treatment for hematoma"
label(data$cva)="Cerebrovascular Accident (CVA)/stroke"
label(data$cva_timing)="Did the CVA/stroke occur"
label(data$incidental_durotomy)="Incidental durotomy "
label(data$inc_durotomy_def_timing)="Did the incidental durotomy occur"
label(data$pneumonia)="Pneumonia"
label(data$pneumonia_timing)="Did the pneumonia occur"
label(data$date_morbidity_review)="Date of review"
label(data$date_morbidity_verify)="Date of verification"
label(data$thirty_day_morbidity_complete)="Complete?"
label(data$event)="Select the event: (only select the event if you contact the participant and complete the interview)"
label(data$date_of_contact)="Date of contact"
label(data$interview_admin)="Administration"
label(data$pt_satisfaction_index)="Which answer best represents your level of satisfaction with your surgical outcome?"
label(data$return_to_work)="Were you able to return to work after your operation?"
label(data$part_time_or_full_time)="Did you return part-time or full-time?"
label(data$date_return_work)="Date you returned to work"
label(data$return_to_activities)="Were you able to return to your previous level of physical activity after your operation?"
label(data$readmit_3mth_surg)="Were you readmitted to the hospital within three months of surgery?"
label(data$date_readmission_3mo)="Date of readmission"
label(data$reason_readmit_3mnth___1)="Reason for the readmit (choice=Deep venous thrombus (DVT))"
label(data$reason_readmit_3mnth___2)="Reason for the readmit (choice=Pulmonary Embolism (PE))"
label(data$reason_readmit_3mnth___3)="Reason for the readmit (choice=A new neuro deficit with confirmation of stroke on MRI)"
label(data$reason_readmit_3mnth___4)="Reason for the readmit (choice=Myocardial infarction (MI))"
label(data$reason_readmit_3mnth___5)="Reason for the readmit (choice=Urinary Tract Infection (UTI))"
label(data$reason_readmit_3mnth___6)="Reason for the readmit (choice=Surgical Site Infection or wound dehiscence (SSI))"
label(data$reason_readmit_3mnth___7)="Reason for the readmit (choice=Surgical site hematoma)"
label(data$reason_readmit_3mnth___8)="Reason for the readmit (choice=A new spine related lower extremity motor deficit (not CVA))"
label(data$reason_readmit_3mnth___11)="Reason for the readmit (choice=Pain related to spine surgery)"
label(data$reason_readmit_3mnth___14)="Reason for the readmit (choice=Congestive heart failure (CHF))"
label(data$reason_readmit_3mnth___16)="Reason for the readmit (choice=Pneumonia)"
label(data$reason_readmit_3mnth___17)="Reason for the readmit (choice=Chronic obstructive pulmonary disease (COPD))"
label(data$reason_readmit_3mnth___9)="Reason for the readmit (choice=Unsure)"
label(data$reason_readmit_3mnth___10)="Reason for the readmit (choice=Other)"
label(data$revision_surg_3mths)="Did you require revision surgery on your spine within 3 months of surgery?"
label(data$revision_surg_12mths)="Did you require revision surgery on your spine within the last 9 months?"
label(data$revision_surg_12mths2)="Did you require revision surgery on your spine within 12 months of surgery?"
label(data$revision_surg_24mths)="Did you require revision surgery on your spine?"
label(data$date_rev_surg)="Date of revision surgery"
label(data$reasonrevision___1)="Reason for revision surgery (choice=Same level surgery)"
label(data$reasonrevision___2)="Reason for revision surgery (choice=Adjacent level surgery)"
label(data$reasonrevision___3)="Reason for revision surgery (choice=Surgical site infection)"
label(data$reasonrevision___4)="Reason for revision surgery (choice=Pseudarthrosis)"
label(data$reasonrevision___5)="Reason for revision surgery (choice=Hardware failure)"
label(data$reasonrevision___6)="Reason for revision surgery (choice=Proximal junctional kyphosis)"
label(data$reasonrevision___7)="Reason for revision surgery (choice=Other)"
label(data$same_level_fusion)="If same level surgery"
label(data$rx_physical_therapy)="Were you prescribed physical therapy for recovery of your spine surgery?"
label(data$receive_phys_therapy)="Did you receive any physical therapy for recovery of your spine surgery?"
label(data$patient_interview_status)="Patient interview status"
label(data$admin_reconcile)="Please indicate the reason you were unable to contact the patient"
label(data$date_interview_review)="Date of review"
label(data$date_interview_verify)="Date of verification"
label(data$patient_interview_complete)="Complete?"
label(data$quest_date_of_admin)="Questionnaires date of administration"
label(data$vas_administration)="Pain scale administration"
label(data$pt_int_pain_meds)="Are you currently taking any medication for pain "
label(data$back_pain_meds)="Is this medication for spine related pain due to spine problems or some other type of pain?"
label(data$narc_opiod_med)="Is the medication you are taking a prescription narcotic or opioid medication?"
label(data$time_on_pain_med)="If yes, how long have you been taking this medicine?"
label(data$back_pain_vas)="Please rate your back pain on a scale of 0 to 10 over the past 7 days."
label(data$leg_pain_vas1)="Please rate your leg pain on a scale of 0 to 10 over the past 7 days."
label(data$back_pain_same_problem)="Is this back pain the same problem that led you to have surgery or is it something different?"
label(data$back_pain_same_location)="Is the pain at the same location in your back?"
label(data$back_pain_reason)="Is the pain because you re-injured your back, had a new injury or is it the same ongoing problem?"
label(data$leg_pain_same_problem)="Is this leg pain the same problem that led you to have surgery or is it something different?"
label(data$leg_pain_reason)="Is the pain because you re-injured yourself, had a new injury or is it the same ongoing problem?"
label(data$odi_administration)="ODI administration"
label(data$for_lang_qol)="??Please indicate the language the survey was completed in"
label(data$odi_score_pain_intensity_int)="1. Please rate your current pain"
label(data$odi_score_personal_care_int)="2. Please pick the response that describes your ability to care for yourself (washing, dressing, etc.)"
label(data$odi_score_lifting_int)="3. Please rate your ability to lift heavy weights"
label(data$odi_score_walking_int)="4. The next item asks you to rate your ability to walk"
label(data$odi_score_sitting_int)="5. Next, I will ask you to rate your ability to sit"
label(data$odi_score_standing_int)="6. Next, rate your ability to stand."
label(data$odi_score_sleeping_int)="7. Does pain interfere with your sleep?"
label(data$odi_score_sex_life_int)="8. This next item will ask whether pain interfers with your sexual activity. With regards to pain, how would you say your sex life is?"
label(data$odi_score_social_life_int)="9. Next, I will ask you whether pain interfers with your social activity. With regards to pain, how would you rate your social life. "
label(data$odi_score_travelling_int)="10. With regard to pain, rate your ability to travel. "
label(data$total_odi_sum_score_int)="Total ODI Sum Score"
label(data$odi_pain_intensity_self)="Section 1 - Pain intensity"
label(data$odi_personal_care_self)="Section 2 - Personal care (washing, dressing, etc.)"
label(data$odi_lifting_self)="Section 3 - Lifting"
label(data$odi_walking_self)="Section 4 - Walking"
label(data$odi_sitting_self)="Section 5 - Sitting"
label(data$odi_standing_self)="Section 6 - Standing"
label(data$odi_sleeping_self)="Section 7 - Sleeping"
label(data$odi_sex_life_self)="Section 8 - Sex life (if applicable)"
label(data$odi_social_life_self)="Section 9 - Social life"
label(data$odi_travelling_self)="Section 10 - Travelling"
label(data$total_odi_sum_score_self)="Total ODI sum score"
label(data$eq_5d_administration)="EQ-5D administration"
label(data$for_lang_eq5d)="Please indicate the language the survey was completed in "
label(data$mobility_int)="MOBILITY Describe your mobility"
label(data$self_care_int)="SELF CARE Describe your self care"
label(data$usual_activities_int)="USUAL ACTIVITIES Describe your ability to perform your usual activities (for example work, study, housework, leisure activities)"
label(data$pain_discomfort_int)="PAIN/DISCOMFORT Describe your pain or discomfort"
label(data$anxiety_depression_int)="ANXIETY/DEPRESSION Describe your anxiety or depression"
label(data$eq_vas_int)="EQ VAS Introduction  I would now like to ask you a different task.  To help you say how good or bad your health state is, Id like you to try to picture in your mind a scale that looks a bit like a thermometer. Can you do that? The best health state you can imagine is marked 100 (one hundred) at the top of the scale and the worst state you can imagine is marked 0 (zero) at the bottom.  EQ VAS - Task I would now like you to tell me the point on this scale where you would put your own health state today.  "
label(data$mobility_self_admin)="Mobility"
label(data$self_care_self_admin)="Self-Care"
label(data$usual_activities_self_admin)="Usual Activities (e.g. work, study, housework, family or leisure activities)"
label(data$pain_self_admin_discomfort)="Pain / Discomfort"
label(data$anxiety_self_admin_depression)="Anxiety / Depression"
label(data$eq_vas_self)="To help people say how good or bad a health state is, we have drawn a scale (rather like a thermometer) on which the best state you can imagine is marked 100 and the worst state you can imagine is marked 0.  We would like you to indicate on this scale how good or bad your own health is today, in your opinion. Please do this by drawing a line from the box below to whichever point on the scale indicates how good or bad your health state is today. "
label(data$actual_qaly_score2)="EQ-5D score"
label(data$date_quest_review)="Date of review"
label(data$date_quest_verify)="Date of verification"
label(data$questionnaires_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("baseline_arm_1","3month_arm_1","12month_arm_1","24month_arm_1","36month_arm_1","48month_arm_1","60month_arm_1"))
data$pgender.factor = factor(data$pgender,levels=c("1","2","3"))
data$lumbar_deformity.factor = factor(data$lumbar_deformity,levels=c("1","2"))
data$excl_specific_lumbar_dx___1.factor = factor(data$excl_specific_lumbar_dx___1,levels=c("0","1"))
data$excl_specific_lumbar_dx___2.factor = factor(data$excl_specific_lumbar_dx___2,levels=c("0","1"))
data$excl_specific_lumbar_dx___4.factor = factor(data$excl_specific_lumbar_dx___4,levels=c("0","1"))
data$excl_specific_lumbar_dx___6.factor = factor(data$excl_specific_lumbar_dx___6,levels=c("0","1"))
data$excl_specific_lumbar_dx___11.factor = factor(data$excl_specific_lumbar_dx___11,levels=c("0","1"))
data$excl_specific_lumbar_dx___12.factor = factor(data$excl_specific_lumbar_dx___12,levels=c("0","1"))
data$excl_specific_lumbar_dx___13.factor = factor(data$excl_specific_lumbar_dx___13,levels=c("0","1"))
data$excl_specific_lumbar_dx___14.factor = factor(data$excl_specific_lumbar_dx___14,levels=c("0","1"))
data$excl_specific_lumbar_dx___15.factor = factor(data$excl_specific_lumbar_dx___15,levels=c("0","1"))
data$six_cycle_exclusion.factor = factor(data$six_cycle_exclusion,levels=c("1"))
data$deformity_exclusion___1.factor = factor(data$deformity_exclusion___1,levels=c("0","1"))
data$deformity_exclusion___2.factor = factor(data$deformity_exclusion___2,levels=c("0","1"))
data$deformity_exclusion___3.factor = factor(data$deformity_exclusion___3,levels=c("0","1"))
data$deformity_exclusion___4.factor = factor(data$deformity_exclusion___4,levels=c("0","1"))
data$deformity_exclusion___5.factor = factor(data$deformity_exclusion___5,levels=c("0","1"))
data$primary_revision.factor = factor(data$primary_revision,levels=c("1","2"))
data$principal_spine_diagnosis___3.factor = factor(data$principal_spine_diagnosis___3,levels=c("0","1"))
data$principal_spine_diagnosis___1.factor = factor(data$principal_spine_diagnosis___1,levels=c("0","1"))
data$principal_spine_diagnosis___4.factor = factor(data$principal_spine_diagnosis___4,levels=c("0","1"))
data$principal_spine_diagnosis___5.factor = factor(data$principal_spine_diagnosis___5,levels=c("0","1"))
data$principal_spine_diagnosis___6.factor = factor(data$principal_spine_diagnosis___6,levels=c("0","1"))
data$principal_spine_diagnosis___9.factor = factor(data$principal_spine_diagnosis___9,levels=c("0","1"))
data$deformity_dx___1.factor = factor(data$deformity_dx___1,levels=c("0","1"))
data$deformity_dx___2.factor = factor(data$deformity_dx___2,levels=c("0","1"))
data$deformity_dx___3.factor = factor(data$deformity_dx___3,levels=c("0","1"))
data$deformity_dx___4.factor = factor(data$deformity_dx___4,levels=c("0","1"))
data$deformity_dx___5.factor = factor(data$deformity_dx___5,levels=c("0","1"))
data$deformity_dx___7.factor = factor(data$deformity_dx___7,levels=c("0","1"))
data$deformity_dx___9.factor = factor(data$deformity_dx___9,levels=c("0","1"))
data$grade_listhesis.factor = factor(data$grade_listhesis,levels=c("1","2","3","4","5","6"))
data$degree_scoliosis.factor = factor(data$degree_scoliosis,levels=c("1","2","3"))
data$type_stenosis___1.factor = factor(data$type_stenosis___1,levels=c("0","1"))
data$type_stenosis___2.factor = factor(data$type_stenosis___2,levels=c("0","1"))
data$type_stenosis___3.factor = factor(data$type_stenosis___3,levels=c("0","1"))
data$central_canal_compress.factor = factor(data$central_canal_compress,levels=c("1","0","2"))
data$lateral_recess.factor = factor(data$lateral_recess,levels=c("1","0","2"))
data$discectomy_op_level.factor = factor(data$discectomy_op_level,levels=c("1","0"))
data$disc_ht_loss.factor = factor(data$disc_ht_loss,levels=c("1","2","3"))
data$coronal_shift.factor = factor(data$coronal_shift,levels=c("1","0","2"))
data$sagittal_vertical_axis.factor = factor(data$sagittal_vertical_axis,levels=c("1","0","2"))
data$failure_brace_req_op.factor = factor(data$failure_brace_req_op,levels=c("1","0","2"))
data$surgeon.factor = factor(data$surgeon,levels=c("(1477675890), (1477675890)","Aaronson Oran (1356445712), Aaronson Oran (1356445712)","Abd-El-Barr Muhammad (1891922688), Abd-El-Barr Muhammad (1891922688)","Abdulhak Muwaffak (1104089499), Abdulhak Muwaffak (1104089499)","Abel Todd (1518946615), Abel Todd (1518946615)","Abrahams John (1720049596), Abrahams John (1720049596)","Abramson Robert (1871545590), Abramson Robert (1871545590)","Adamson Tim (1326046236), Adamson Tim (1326046236)","Agarwal Akash (1073622346), Agarwal Akash (1073622346)","Aggarwal Sanjeev (1679502066), Aggarwal Sanjeev (1679502066)","Ahmed Hazem (152827557), Ahmed Hazem (152827557)","Air Ellen (1881805174), Air Ellen (1881805174)","Akhtar Naveed (1598769036), Akhtar Naveed (1598769036)","Akin Eric (1447220264), Akin Eric (1447220264)","Al Tamimi Mazin (1033169982), Al Tamimi Mazin (1033169982)","Alberts Mark (1992795140), Alberts Mark (1992795140)","Aleem Ilyas (1639558323), Aleem Ilyas (1639558323)","Alexander Peter (1972573962), Alexander Peter (1972573962)","Alexander Joseph (1457331035), Alexander Joseph (1457331035)","Allen Keith (1609804855), Allen Keith (1609804855)","Altschul Dorothea (1740323138), Altschul Dorothea (1740323138)","Altstadt Thomas (1831366392), Altstadt Thomas (1831366392)","Amene Chiazo (1245435056), Amene Chiazo (1245435056)","Ames Chris (1265485155), Ames Chris (1265485155)","Amin Devin (1881649036), Amin Devin (1881649036)","Andrade Nicholas (1497919310), Andrade Nicholas (1497919310)","Angevine Peter (1255384236), Angevine Peter (1255384236)","Anson  Philip  (1508892399), Anson  Philip  (1508892399)","ARAND ARTHUR (1386652584), ARAND ARTHUR (1386652584)","Arnautovic Kenan (1134118789), Arnautovic Kenan (1134118789)","Arnold Paul (1851486559), Arnold Paul (1851486559)","ARORA TARUN (1538308275), ARORA TARUN (1538308275)","Arthur Adam (1982693313), Arthur Adam (1982693313)","Asher Anthony (1003814914), Asher Anthony (1003814914)","Atkinson John (1740250752), Atkinson John (1740250752)","Auschwitz Tyler (1003050493), Auschwitz Tyler (1003050493)","Aymond James (1316972615), Aymond James (1316972615)","Aziz Khaled (1316961949), Aziz Khaled (1316961949)","Azmi Hooman (1245389931), Azmi Hooman (1245389931)","Baaj Ali (1417148800), Baaj Ali (1417148800)","Bachison Casey (1235349820), Bachison Casey (1235349820)","Bacon C. (1962505750), Bacon C. (1962505750)","Baek Paul (1801831292), Baek Paul (1801831292)","Baghai Parvis (1770576662), Baghai Parvis (1770576662)","Bagley Carlos (1801939947), Bagley Carlos (1801939947)","Bagley_old Carlos (1801939947), Bagley_old Carlos (1801939947)","Bailey Byron (1508804857), Bailey Byron (1508804857)","BAILEY STEVEN (1417065038), BAILEY STEVEN (1417065038)","Baird Clinton (1972656908), Baird Clinton (1972656908)","Baker Christopher (1760432090), Baker Christopher (1760432090)","Ball Perry (1144322371), Ball Perry (1144322371)","Balturshot Gregory (1043216724), Balturshot Gregory (1043216724)","Bambakidis Nicholas (1508851106), Bambakidis Nicholas (1508851106)","Bangerter Kurt (1215948799), Bangerter Kurt (1215948799)","Barnett H (1518062462), Barnett H (1518062462)","Barr John (1679523260), Barr John (1679523260)","Barr John (1518178318), Barr John (1518178318)","Barranco Frank (1134115884), Barranco Frank (1134115884)","Barth Green (1730106204), Barth Green (1730106204)","Barth  Konrad (1558307330), Barth  Konrad (1558307330)","Baskin Jonathan (1639136757), Baskin Jonathan (1639136757)","Basta Peter (1699703785), Basta Peter (1699703785)","Bate Berkeley (1891969713), Bate Berkeley (1891969713)","Batjer Henry (1518931104), Batjer Henry (1518931104)","Batzdorf Ulrich (1801811047), Batzdorf Ulrich (1801811047)","Bay Janet (1831183201), Bay Janet (1831183201)","Beard Douglas (1669456497), Beard Douglas (1669456497)","Beaty Narlin (1184859530), Beaty Narlin (1184859530)","Becker Gerald (1013914332), Becker Gerald (1013914332)","Bederson Joshua (1821064569), Bederson Joshua (1821064569)","Behrmann Donald (1841249711), Behrmann Donald (1841249711)","Bellew Michael (1306856828), Bellew Michael (1306856828)","Benedict William (1285778613), Benedict William (1285778613)","Benglis David (1669675641), Benglis David (1669675641)","Benitez Ronald  (1730146820), Benitez Ronald  (1730146820)","Benz Robert (1972595247), Benz Robert (1972595247)","Berenstein Alejandro  (1790766848), Berenstein Alejandro  (1790766848)","Berkman Richard (1699756825), Berkman Richard (1699756825)","Bernard Joe (1851399687), Bernard Joe (1851399687)","Berry Robert (1982673505), Berry Robert (1982673505)","Beyerl Brian (1104883297), Beyerl Brian (1104883297)","Bhalla Tarun (1346412731), Bhalla Tarun (1346412731)","Bhattacharjee Sumon (1740221910), Bhattacharjee Sumon (1740221910)","Bhatti Sana (1366444275), Bhatti Sana (1366444275)","Bhowmick Deb (1275696650), Bhowmick Deb (1275696650)","Bible Jesse (1710120282), Bible Jesse (1710120282)","Biggs William (1265496715), Biggs William (1265496715)","Binette Michael (1386643476), Binette Michael (1386643476)","Birkedal John (1720062128), Birkedal John (1720062128)","Bisson Erica (1750409520), Bisson Erica (1750409520)","Biswas Arundhati (1326297565), Biswas Arundhati (1326297565)","Blatt Geoffrey (1134191745), Blatt Geoffrey (1134191745)","Blatter Duane (1316949316), Blatter Duane (1316949316)","Boakye Maxwell (1023030913), Boakye Maxwell (1023030913)","Bodemer William (1497705370), Bodemer William (1497705370)","BOHINSKI ROBERT (1306876172), BOHINSKI ROBERT (1306876172)","Bohnstedt Bradley (1952568271), Bohnstedt Bradley (1952568271)","Boling Warren (1912007790), Boling Warren (1912007790)","Bolinger Bryan (1609149871), Bolinger Bryan (1609149871)","Bonaroti Eugene (1528068608), Bonaroti Eugene (1528068608)","Bond Aaron (1104115385), Bond Aaron (1104115385)","Boockvar John (1881651545), Boockvar John (1881651545), Boockvar John (1881651545)","Boop Frederick  (1841280344), Boop Frederick  (1841280344)","Borkon A (1336190602), Borkon A (1336190602)","Botero Ernesto (1275524605), Botero Ernesto (1275524605)","Boulos Alan (1821090747), Boulos Alan (1821090747)","BOWLES ALFRED (1831183052), BOWLES ALFRED (1831183052)","Boyer Richard (1902885098), Boyer Richard (1902885098)","Bradbury Jamie (1861659450), Bradbury Jamie (1861659450)","Branch Charles (1821078403), Branch Charles (1821078403)","Branch Byron (1801039052), Branch Byron (1801039052)","Brightman Rebecca (1891789236), Brightman Rebecca (1891789236)","Broaddus William (1033140694), Broaddus William (1033140694)","Brophy John  (1013930296), Brophy John  (1013930296)","Brown Michael (1003818790), Brown Michael (1003818790)","Buckingham Martin (1043275654), Buckingham Martin (1043275654)","Bumpass David (1265688733), Bumpass David (1265688733)","Bunch Joshua (1932495769), Bunch Joshua (1932495769)","Burke Lauren (1922261346), Burke Lauren (1922261346)","Burt James (1619983962), Burt James (1619983962)","Burton Douglas (1194834168), Burton Douglas (1194834168)","Bydon Ali (1679522080), Bydon Ali (1679522080)","Bydon Mohamad (1871766022), Bydon Mohamad (1871766022)","Cabbell Kyle (1598756934), Cabbell Kyle (1598756934)","Cahill Kevin (1811157613), Cahill Kevin (1811157613)","Calderon Stephen (1699716183), Calderon Stephen (1699716183)","Callahan James (1750311098), Callahan James (1750311098)","Callahan Brian (1982750576), Callahan Brian (1982750576)","Camarata Paul (1558398982), Camarata Paul (1558398982)","Cameron Brian (1235346354), Cameron Brian (1235346354)","Campbell Mitchell (1174586457), Campbell Mitchell (1174586457)","Campos-Benitez Mauricio (1700028180), Campos-Benitez Mauricio (1700028180)","Cantando John (1780795435), Cantando John (1780795435)","Capicotto William (1356484174), Capicotto William (1356484174)","Cardenas Raul (1619187697), Cardenas Raul (1619187697)","Carlson Andrew (1811036825), Carlson Andrew (1811036825)","Carlson Brandon (1710249743), Carlson Brandon (1710249743)","Carson Larry (1588764385), Carson Larry (1588764385)","Castiglia Gregory (1003891896), Castiglia Gregory (1003891896)","Ceola Wade (1669429049), Ceola Wade (1669429049)","Chabot Joseph (1033421623), Chabot Joseph (1033421623)","Chadduck James (1952381741), Chadduck James (1952381741)","Chambers Melissa (1871536565), Chambers Melissa (1871536565)","Chang Steve (1154501294), Chang Steve (1154501294)","Chang Victor (1487855185), Chang Victor (1487855185)","Chapple Kyle (1295961555), Chapple Kyle (1295961555)","Chedid Mokbel (1225103963), Chedid Mokbel (1225103963)","Cheng Joseph (1073697173), Cheng Joseph (1073697173)","Cheng Jennifer (1942474929), Cheng Jennifer (1942474929)","Chewning Samuel (1255323044), Chewning Samuel (1255323044)","Chilton Jonathan (1073585337), Chilton Jonathan (1073585337)","Chitale Vidyadhar (1841350956), Chitale Vidyadhar (1841350956)","Chohan Muhammad (1427220128), Chohan Muhammad (1427220128)","Chou Dean (1023066834), Chou Dean (1023066834)","Choudhri Tanvir (1043286727), Choudhri Tanvir (1043286727)","Chozick Bruce (1386686897), Chozick Bruce (1386686897)","Christiano Lana (1467615344), Christiano Lana (1467615344)","Chun Jay (1548227663), Chun Jay (1548227663)","Clark Aaron (1518295815), Clark Aaron (1518295815)","Clark Lindsey (1003147323), Clark Lindsey (1003147323)","Clarke Michelle (1437136355), Clarke Michelle (1437136355)","Clawson Junius (1427018761), Clawson Junius (1427018761)","Cobb William (1972755254), Cobb William (1972755254), Cobb William (1972755254)","Cochran Daniel (1528195252), Cochran Daniel (1528195252)","Coester Hans (1043256613), Coester Hans (1043256613)","Coger Brenton (1427107283), Coger Brenton (1427107283)","Cohen-Gadol Aaron (1215962279), Cohen-Gadol Aaron (1215962279)","Collins John (1588764369), Collins John (1588764369)","Conger Andrew (1821239898), Conger Andrew (1821239898)","Connolly E. (1447386578), Connolly E. (1447386578)","Cook Steven (1194015370), Cook Steven (1194015370)","Coric Domagoj (1265430029), Coric Domagoj (1265430029)","Corradino Gregory  (1376504332), Corradino Gregory  (1376504332)","Cote Ian (1457762221), Cote Ian (1457762221), Cote Ian (1457762221)","Couture Daniel (1124210950), Couture Daniel (1124210950)","Covington Christopher (1235190943), Covington Christopher (1235190943)","Cowan Michael (1326046186), Cowan Michael (1326046186)","Cox Joseph (1013117688), Cox Joseph (1013117688)","Cozzens Jeffrey (1750301875), Cozzens Jeffrey (1750301875)","Crabtree Herbert (1659325785), Crabtree Herbert (1659325785)","Cram Gary (1013900216), Cram Gary (1013900216)","Crawford Charles (1265570808), Crawford Charles (1265570808)","Crecelius Jeffrey (1477521573), Crecelius Jeffrey (1477521573)","Cress Marshall (1699971945), Cress Marshall (1699971945)","Crow Robert (1023072139), Crow Robert (1023072139)","Crowley Richard (Webster) (1972710101), Crowley Richard (Webster) (1972710101)","Cuddy Brian (1629037924), Cuddy Brian (1629037924)","Cuffe Mark (1255308151), Cuffe Mark (1255308151)","Cunningham Edwin (1578510954), Cunningham Edwin (1578510954)","Cunningham David (1255320677), Cunningham David (1255320677)","CURT BRADFORD (1003027392), CURT BRADFORD (1003027392)","DAmbrosio Anthony (1356463079), DAmbrosio Anthony (1356463079)","DAngelo William  (1174567986), DAngelo William  (1174567986)","Daftari Tapan (1649267329), Daftari Tapan (1649267329)","Dailey Andrew (1881706596), Dailey Andrew (1881706596)","Dakwar Elias (1801095609), Dakwar Elias (1801095609)","Dal Canto Richard (1114978533), Dal Canto Richard (1114978533)","Dalal shamsher (1194879338), Dalal shamsher (1194879338)","Dalfino John (1245490283), Dalfino John (1245490283)","Darkhabani Ziad (1871815225), Darkhabani Ziad (1871815225)","Das Kaushik (1205821147), Das Kaushik (1205821147)","Daugherty Wilson (1023094950), Daugherty Wilson (1023094950)","Davis John  (1891775920), Davis John  (1891775920)","Davis Steven (1467471284), Davis Steven (1467471284)","De Leacy Reade (1982045845), De Leacy Reade (1982045845)","de Lotbiniere Alain (1588645485), de Lotbiniere Alain (1588645485)","DeCuypere Michael (1922329986), DeCuypere Michael (1922329986)","Delashaw Johnny (1831107309), Delashaw Johnny (1831107309)","DeNardo Andrew (1437154028), DeNardo Andrew (1437154028)","DenHaese Ryan (1356563381), DenHaese Ryan (1356563381)","DePowell John (1467663757), DePowell John (1467663757)","Desai Rajiv (1881637833), Desai Rajiv (1881637833)","Deshmukh Vinay (1144228933), Deshmukh Vinay (1144228933)","Detwiler Paul (1447253356), Detwiler Paul (1447253356)","Devin Clinton (1851448724), Devin Clinton (1851448724)","Dewitt David (1265424485), Dewitt David (1265424485)","Dey Mahua (1891933057), Dey Mahua (1891933057)","Dhall Sanjay (1598943615), Dhall Sanjay (1598943615)","Dhupar Scott (1942289491), Dhupar Scott (1942289491)","Dias Mark (117457690), Dias Mark (117457690)","Dickman Curtis  (1003802539), Dickman Curtis  (1003802539)","Dimar John (1235192451), Dimar John (1235192451)","DiNAPOLI VINCENT (1144482746), DiNAPOLI VINCENT (1144482746)","Dinh Dzung (1679513642), Dinh Dzung (1679513642)","DiRisio Darryl  (1407858830), DiRisio Darryl  (1407858830)","Ditty Benjamin (1215163795), Ditty Benjamin (1215163795)","Djurasovic Mladen (1609839257), Djurasovic Mladen (1609839257)","Dodd Zachary (1538327010), Dodd Zachary (1538327010)","Donner Jeffrey (1710968185), Donner Jeffrey (1710968185)","Doppenberg Egon (1083602551), Doppenberg Egon (1083602551)","Duffy Kent (1508827452), Duffy Kent (1508827452)","Dull Scott (1568465961), Dull Scott (1568465961)","Duncan Richard (1003871195), Duncan Richard (1003871195)","Durward Quentin (1457354383), Durward Quentin (1457354383)","Dyer Emmett (1962400903), Dyer Emmett (1962400903)","Eads Todd (1902063225), Eads Todd (1902063225)","Eckardt Gerald (1013189737), Eckardt Gerald (1013189737)","Ecker Robert  (1184683708), Ecker Robert  (1184683708)","Edwards John (1568692887), Edwards John (1568692887)","Egnatchik James (1699751990), Egnatchik James (1699751990)","Ehtesham Moneeb  (1346413929), Ehtesham Moneeb  (1346413929)","Einhaus Stephanie  (1720078827), Einhaus Stephanie  (1720078827)","Eisenberg Mark (1871611731), Eisenberg Mark (1871611731)","Eisler Jesse (1326017617), Eisler Jesse (1326017617)","Elijovich Lucas (1750480554), Elijovich Lucas (1750480554)","Elisevich Kostantin (1841368651), Elisevich Kostantin (1841368651)","Ellegala Dilantha (1710056080), Ellegala Dilantha (1710056080)","Ellis Jason (1629244884), Ellis Jason (1629244884)","Elowitz Eric (1780666735), Elowitz Eric (1780666735)","Elshihabi Said (1467477463), Elshihabi Said (1467477463)","Elsner Henry (1508857749), Elsner Henry (1508857749)","Emrich Joseph (1649262858), Emrich Joseph (1649262858)","Erickson Melissa (1730356056), Erickson Melissa (1730356056)","Espinosa Jose (1982690632), Espinosa Jose (1982690632)","Espiritu Michael (1902932015), Espiritu Michael (1902932015)","Fahrbach John (1205045424), Fahrbach John (1205045424)","Falloon Thomas (1902897051), Falloon Thomas (1902897051)","Falowski Steven (1720272800), Falowski Steven (1720272800)","Farahvar Arash (1659382679), Farahvar Arash (1659382679)","Farkas Jacques (1437104577), Farkas Jacques (1437104577)","Fassett Daniel (1205902442), Fassett Daniel (1205902442)","Felix Brent (1851383350), Felix Brent (1851383350)","Fergus Allan (1770563561), Fergus Allan (1770563561)","Fernandez Julius (1841289493), Fernandez Julius (1841289493)","Field Melvin (1962451823), Field Melvin (1962451823)","Fifi Johanna  (1396878013), Fifi Johanna  (1396878013)","Fitzpatrick Brian (1740276138), Fitzpatrick Brian (1740276138)","Fleming James (1245448083), Fleming James (1245448083)","Florman Jeffrey  (1306886130), Florman Jeffrey  (1306886130)","Floyd David (1699783498), Floyd David (1699783498)","Fogelson Jeremy (1871565606), Fogelson Jeremy (1871565606)","Foley Kevin (1861451874), Foley Kevin (1861451874)","Foster Kimberly (1952533739), Foster Kimberly (1952533739)","Fountain Todd (1013995901), Fountain Todd (1013995901)","Fowler Wesley (1689678419), Fowler Wesley (1689678419)","Fox William (1134241243), Fox William (1134241243)","Fox W. Christopher (1134241243), Fox W. Christopher (1134241243), Fox W. Christopher (1134241243)","Fox Benjamin (1184955734), Fox Benjamin (1184955734)","Francis Todd (1265607139), Francis Todd (1265607139)","Franke Eric (1588787634), Franke Eric (1588787634)","Frankel Roger (1295811982), Frankel Roger (1295811982)","Franklin Robbi (1619171279), Franklin Robbi (1619171279)","Frazee John (1255412300), Frazee John (1255412300)","Freeman Thomas  (1962421297), Freeman Thomas  (1962421297)","Friedman Allan  (1881777043), Friedman Allan  (1881777043)","Friedman William (1942237615), Friedman William (1942237615)","Friedman Eric (1932198280), Friedman Eric (1932198280)","Fu Kai Ming (1104033349), Fu Kai Ming (1104033349)","Fulkerson Daniel (1386802387), Fulkerson Daniel (1386802387)","Fullagar Timothy (1629088364), Fullagar Timothy (1629088364)","Gaede Steven (1730141060), Gaede Steven (1730141060)","Gallati Christopher (1649448713), Gallati Christopher (1649448713)","Galt Spencer (1598733586), Galt Spencer (1598733586)","Ganapathy Venkatanarayanan (1588070239), Ganapathy Venkatanarayanan (1588070239)","Gandhi Ravi (1174787337), Gandhi Ravi (1174787337)","Gandhoke Gurpreet (1639459233), Gandhoke Gurpreet (1639459233)","Gardner Paul (1821012832), Gardner Paul (1821012832)","Gardon Mark (1366470544), Gardon Mark (1366470544)","Garg Ankur (1598961807), Garg Ankur (1598961807)","Gates Marilyn (1134294879), Gates Marilyn (1134294879)","Gaufin Lynn (1205857158), Gaufin Lynn (1205857158)","Gebreyohanns Mehari (1750466595), Gebreyohanns Mehari (1750466595)","Geckle David (1588634588), Geckle David (1588634588)","Gehring Randy (1134198567), Gehring Randy (1134198567)","Gerdes Jeffrey (1134181571), Gerdes Jeffrey (1134181571)","German John (1598787905), German John (1598787905)","Gewirtz Robert (1316944689), Gewirtz Robert (1316944689)","Gianaris Peter (1699759753), Gianaris Peter (1699759753)","Gill Waltus (1013168004), Gill Waltus (1013168004)","Gill Kevin (1427054964), Gill Kevin (1427054964)","Glassman Steven (1275531501), Glassman Steven (1275531501)","Gluf Wayne (1518930775), Gluf Wayne (1518930775)","Gocio Allan (1477503597), Gocio Allan (1477503597)","Gonzalez Nestor (1730387887), Gonzalez Nestor (1730387887)","Gooch Hubert (1700878212), Gooch Hubert (1700878212)","Goodman Greg (1023019346), Goodman Greg (1023019346)","Goodwin Rory (1538303235), Goodwin Rory (1538303235)","Goren Oded (1003299629), Goren Oded (1003299629)","Gottfried Oren (1578764213), Gottfried Oren (1578764213)","GOZAL YAIR (1356630818), GOZAL YAIR (1356630818)","Graham Robert (1942231501), Graham Robert (1942231501)","Grahm Thomas (1568465474), Grahm Thomas (1568465474)","Grande Andrew (1629289939), Grande Andrew (1629289939)","Green Barth (1730106204), Green Barth (1730106204)","Greenberg Mark (1205855533), Greenberg Mark (1205855533)","Greenberg Jonathan  (1134229925), Greenberg Jonathan  (1134229925)","Greene Karl (1376535492), Greene Karl (1376535492)","Griessenauer Christoph (1376779850), Griessenauer Christoph (1376779850)","Griffith Stephen (1659552818), Griffith Stephen (1659552818)","Griffitt Wesley (1821002684), Griffitt Wesley (1821002684)","Grimm Bennett (1891877742), Grimm Bennett (1891877742)","Gropper Gary  (1164531844), Gropper Gary  (1164531844)","Gross Naina (1649200429), Gross Naina (1649200429)","Grossi Peter (1881863744), Grossi Peter (1881863744)","Guillaume Daniel (1932193083), Guillaume Daniel (1932193083)","Guitton Jean (1114979242), Guitton Jean (1114979242)","Gum Jeffrey (1982879607), Gum Jeffrey (1982879607)","Gumidyala Krishna (1649486994), Gumidyala Krishna (1649486994)","Guthikonda Bharat (1326236324), Guthikonda Bharat (1326236324)","Guthrie Barton (1326083510), Guthrie Barton (1326083510)","Hadar Eldad (1952495947), Hadar Eldad (1952495947)","Hadley Mark (1194761403), Hadley Mark (1194761403)","Haglund Michael (1568646612), Haglund Michael (1568646612)","Hahn Michael (1891784237), Hahn Michael (1891784237)","Haid Regis (1811992449), Haid Regis (1811992449)","Haines Stephen (1255365540), Haines Stephen (1255365540)","Hammers Ronald (1730340324), Hammers Ronald (1730340324)","Han Patrick (1043203706), Han Patrick (1043203706)","Haque Raqeeb (1851545875), Haque Raqeeb (1851545875)","Harbaugh Robert (1811949332), Harbaugh Robert (1811949332)","Harker Colleen (1851347959), Harker Colleen (1851347959)","Harrington James  (1043204290), Harrington James  (1043204290)","Harrison Richard (1912935115), Harrison Richard (1912935115)","Hart David (1235155110), Hart David (1235155110), Hart David (1235155110)","Hartl Roger (1043236623), Hartl Roger (1043236623)","Hauck Erik (195250554), Hauck Erik (195250554)","Hawkins Alexander  (1619070802), Hawkins Alexander  (1619070802)","Haworth Charles (1669530390), Haworth Charles (1669530390)","Hawryluk Gregory  (1871934596), Hawryluk Gregory  (1871934596)","Hayes Seth (1366684110), Hayes Seth (1366684110)","Hayward Dustin (1235395849), Hayward Dustin (1235395849)","Hdeib Alia (1871798819), Hdeib Alia (1871798819)","Heafner Michael (1811995715), Heafner Michael (1811995715)","Healy Andrew (1699949669), Healy Andrew (1699949669)","Heilman Carl (1649229907), Heilman Carl (1649229907)","Heindel Clifford (1720035389), Heindel Clifford (1720035389)","Helm Gregory (1194894709), Helm Gregory (1194894709)","Helms Jody (1093930216), Helms Jody (1093930216)","Henegar Martin (1831197698), Henegar Martin (1831197698)","Heros Roberto (1962466987), Heros Roberto (1962466987)","Hervey-Jumper Shawn (1104945542), Hervey-Jumper Shawn (1104945542)","Herzig David (1184885915), Herzig David (1184885915)","Heth Jason (1184721433), Heth Jason (1184721433)","Hillard Virany (1972547750), Hillard Virany (1972547750)","Hiremath Girish (1811163603), Hiremath Girish (1811163603)","Hirschl Robert (1902019771), Hirschl Robert (1902019771)","Hiser Bradley (1750487823), Hiser Bradley (1750487823)","Hodes Jonathan (1851494983), Hodes Jonathan (1851494983)","Hoffer Seth (1104023142), Hoffer Seth (1104023142)","Hoh Daniel (1316110901), Hoh Daniel (1316110901)","Hoh Brian (1033164637), Hoh Brian (1033164637)","Hohl Justin (1639371149), Hohl Justin (1639371149)","Hoit Daniel (1902000698), Hoit Daniel (1902000698)","Holla Shripathi (1114037975), Holla Shripathi (1114037975)","Holland Christopher (1235373218), Holland Christopher (1235373218)","Hollis Peter (1629115308), Hollis Peter (1629115308)","Holloway William (1649396334), Holloway William (1649396334)","Holloway Kathryn (1366470072), Holloway Kathryn (1366470072)","Holly Langston (1063437192), Holly Langston (1063437192)","Hood Robert (1518973767), Hood Robert (1518973767)","Hooley Eric (1548230014), Hooley Eric (1548230014)","Hoover Steven (1235370982), Hoover Steven (1235370982)","Horn Eric (1053437541), Horn Eric (1053437541)","HORNE DALE (1023011707), HORNE DALE (1023011707)","Horowitz Michael (1881662716), Horowitz Michael (1881662716)","Hoski James (1285719096), Hoski James (1285719096)","Hsu Wesley (1407908528), Hsu Wesley (1407908528)","Hsu Edward (1942521968), Hsu Edward (1942521968)","Hu Yin (1477750768), Hu Yin (1477750768)","Humphries William (1265792576), Humphries William (1265792576)","Hunt Matthew (1619017787), Hunt Matthew (1619017787)","HWANG ROY (1134418965), HWANG ROY (1134418965)","Hylton Phillip (1487699112), Hylton Phillip (1487699112)","Iantosca Mark (1386694925), Iantosca Mark (1386694925)","Illig Joseph (1639171549), Illig Joseph (1639171549)","Ireland Patrick (1164402368), Ireland Patrick (1164402368)","Isaacs Robert (1518041672), Isaacs Robert (1518041672)","Ivan Michael (1669700365), Ivan Michael (1669700365)","Jackson Garrett (1336381631), Jackson Garrett (1336381631)","Jackson Robert (1174551808), Jackson Robert (1174551808)","Jacobs Darren (1497956833), Jacobs Darren (1497956833)","Jacobs John (1912947995), Jacobs John (1912947995)","Jaikumar Sivakumar (1154345288), Jaikumar Sivakumar (1154345288)","Jaleel Naser (1437477387), Jaleel Naser (1437477387)","James Steven (1205810371), James Steven (1205810371)","James Robert (1952437097), James Robert (1952437097)","Jane sr John (1992874507), Jane sr John (1992874507)","Jarrell Stuart (1467650663), Jarrell Stuart (1467650663)","Jaufmann Bruce (1225134109), Jaufmann Bruce (1225134109)","Javed Tariq (1871579235), Javed Tariq (1871579235)","Jayarao Mayur (1881853158), Jayarao Mayur (1881853158)","Jenkins Jeffrey (1942291133), Jenkins Jeffrey (1942291133)","Jenkins John (1932143435), Jenkins John (1932143435)","Jensen Wade (1730139890), Jensen Wade (1730139890)","Jernigan Sarah (1467673723), Jernigan Sarah (1467673723)","Jho Hae-Dong (1386645307), Jho Hae-Dong (1386645307)","Jho Diana (1346500196), Jho Diana (1346500196)","Jimenez Omar  (1154351930), Jimenez Omar  (1154351930)","JIMENEZ LINCOLN (1003011339), JIMENEZ LINCOLN (1003011339)","Johnson Matthew (1376688150), Johnson Matthew (1376688150)","Johnson Michele (1295861342), Johnson Michele (1295861342)","Johnson Keyne (1053577015), Johnson Keyne (1053577015)","Johnson Mark (1679523260), Johnson Mark (1679523260)","Johson Randall (1447293188), Johson Randall (1447293188)","Jones David (1336132430), Jones David (1336132430)","Jones  Kristen  (1225260003), Jones  Kristen  (1225260003)","Julien Terrence (1548355779), Julien Terrence (1548355779)","Jun-San Yang Lynda  (1295833069), Jun-San Yang Lynda  (1295833069)","KACHMANN MICHAEL (1104040732), KACHMANN MICHAEL (1104040732)","Kaibara Taro (1467417444), Kaibara Taro (1467417444)","Kaiser Michael (1598818817), Kaiser Michael (1598818817), Kaiser Michael (1598818817)","Kakarla Udaya (1609056647), Kakarla Udaya (1609056647)","Kalkanis Steven (1861567505), Kalkanis Steven (1861567505)","Kansal Narendra (1407897333), Kansal Narendra (1407897333)","Kaptain George (1306813621), Kaptain George (1306813621)","Karahalios Dean (1245205210), Karahalios Dean (1245205210)","Karampelas Ioannis (1528216868), Karampelas Ioannis (1528216868)","Karas Chris (1174781587), Karas Chris (1174781587)","Karikari Isaac (1497891717), Karikari Isaac (1497891717)","Karimi Reza (1891950788), Karimi Reza (1891950788)","Kasliwal Manish (1306159272), Kasliwal Manish (1306159272)","Kazemi Noojan (1164701538), Kazemi Noojan (1164701538)","Kelleher John (1609082072), Kelleher John (1609082072)","Kennedy Jerone (1780644401), Kennedy Jerone (1780644401)","Kershenovich Amir (1285822197), Kershenovich Amir (1285822197)","Khairi Saad (1780685818), Khairi Saad (1780685818)","Khajavi Kaveh (1487610275), Khajavi Kaveh (1487610275)","Khaldi Ahmad (1679736938), Khaldi Ahmad (1679736938)","Khaleel Mohammed (1356541296), Khaleel Mohammed (1356541296)","Khan Shah-Naz (1063615904), Khan Shah-Naz (1063615904)","Khoshyomn Sami (1699719963), Khoshyomn Sami (1699719963)","Khoury George (1174582035), Khoury George (1174582035)","Khoury Michael (1992792659), Khoury Michael (1992792659)","Kiehm Kelly (1588654370), Kiehm Kelly (1588654370)","Kilburn Michael (1992884753), Kilburn Michael (1992884753)","Killeffer James (1851333728), Killeffer James (1851333728)","Kim Paul (1639362700), Kim Paul (1639362700)","Kinsman Michael (1740418235), Kinsman Michael (1740418235)","Klimo Paul (1336127968), Klimo Paul (1336127968)","Klopfenstein Jeffrey  (1578508354), Klopfenstein Jeffrey  (1578508354)","Klopper Hendrik (1942429394), Klopper Hendrik (1942429394)","Knaub Mark (1871557876), Knaub Mark (1871557876)","Knightly John (1912964008), Knightly John (1912964008)","Kole Max (1770658411), Kole Max (1770658411)","Kominek Selma (1750518544), Kominek Selma (1750518544)","Konrad Peter (1821197252), Konrad Peter (1821197252)","Kopell Brian (1568413300), Kopell Brian (1568413300)","Koreckij Theodore (1841432937), Koreckij Theodore (1841432937)","Kornel Ezriel (1194785592), Kornel Ezriel (1194785592)","Krauss William (1164492252), Krauss William (1164492252)","Kremer Michael (1982646949), Kremer Michael (1982646949)","Kringlen Mark (1326256314), Kringlen Mark (1326256314)","Kritzer Randy (1508859745), Kritzer Randy (1508859745)","Kruger David (1881684918), Kruger David (1881684918)","Kryzanski James (1730107467), Kryzanski James (1730107467)","Kucia Elisa (1700066842), Kucia Elisa (1700066842)","Kulwin Charles (1619294600), Kulwin Charles (1619294600)","La Marca Frank (1548367808), La Marca Frank (1548367808)","LaBagnara Michael (1881094357), LaBagnara Michael (1881094357)","Lacroix Michel (1316190168), Lacroix Michel (1316190168)","Lad Nandan (1346408507), Lad Nandan (1346408507)","Lal Sumeer (1588743330), Lal Sumeer (1588743330)","Lam Cornelius (1871695098), Lam Cornelius (1871695098)","Landi Michael (1437116308), Landi Michael (1437116308)","Lange Stephan (1255372728), Lange Stephan (1255372728)","Langer David (1790791846), Langer David (1790791846)","Lantner Howard (1730127382), Lantner Howard (1730127382)","Latefi Ahmad (1215220405), Latefi Ahmad (1215220405)","Lavine Sean (1386797868), Lavine Sean (1386797868), Lavine Sean (1386797868)","Lawson Matthew  (1730251943), Lawson Matthew  (1730251943)","Lawton Michael (1073562294), Lawton Michael (1073562294)","Ledlie Jon (1033112941), Ledlie Jon (1033112941)","Lee Ian (1164631842), Lee Ian (1164631842)","Lee Kangmin (1477760353), Lee Kangmin (1477760353)","Lee Albert  (1972570885), Lee Albert  (1972570885)","Lee Albert (1922200393), Lee Albert (1922200393)","Lee Sunghoon (1184642175), Lee Sunghoon (1184642175)","Leipzig Thomas (1720062193), Leipzig Thomas (1720062193)","Leone Anthony (1134297062), Leone Anthony (1134297062)","Levene Howard (1952574774), Levene Howard (1952574774), Levene Howard (1952574774)","Levi Allan (1386608016), Levi Allan (1386608016), Levi Allan (1386608016)","Levin Emily (1992824346), Levin Emily (1992824346)","Levine Mitchell (1073699195), Levine Mitchell (1073699195)","Levy Elad (1184683195), Levy Elad (1184683195)","Lewis Jeremy (1972707743), Lewis Jeremy (1972707743)","Lewis Jeffrey (1417933706), Lewis Jeffrey (1417933706)","Lichtor Terence (1114976289), Lichtor Terence (1114976289)","Lieberman Daniel  (1508868308), Lieberman Daniel  (1508868308)","Lin Julian (1437104593), Lin Julian (1437104593)","Lin Chi-Ta (1265759955), Lin Chi-Ta (1265759955)","Lin Franklin (1679648927), Lin Franklin (1679648927)","Lipson Adam (1912012071), Lipson Adam (1912012071)","Little Andrew (1205016250), Little Andrew (1205016250)","Litvack Zachary (1235347980), Litvack Zachary (1235347980)","Liu Kenneth (1245443068), Liu Kenneth (1245443068), Liu Kenneth (1245443068)","Loh Yince (1720020894), Loh Yince (1720020894)","Loomis Ralph (1699779595), Loomis Ralph (1699779595)","Lovell Laverne  (1346263514), Lovell Laverne  (1346263514)","Loven Tina (1306074109), Loven Tina (1306074109)","Lowry David (1578650123), Lowry David (1578650123)","Lu Daniel (1457585903), Lu Daniel (1457585903)","Lyness Leslie (1578876694), Lyness Leslie (1578876694)","Lytle Richard (1568466308), Lytle Richard (1568466308)","MacDonald Joel (1487744090), MacDonald Joel (1487744090), MacDonald Joel (1487744090)","Mace John (1114971264), Mace John (1114971264)","Macfarlane John (1679533343), Macfarlane John (1679533343)","Machinis Theofilos (1295944288), Machinis Theofilos (1295944288), Machinis Theofilos (1295944288)","Macyszyn Luke (), Macyszyn Luke ()","Madden Christopher (1992795140), Madden Christopher (1992795140)","Magadan Alejandro (1679523260), Magadan Alejandro (1679523260)","Mahan Mark (1477733426), Mahan Mark (1477733426)","Mahmood Asim (1689749327), Mahmood Asim (1689749327)","Mahmoud Akram (1982694642), Mahmoud Akram (1982694642), Mahmoud Akram (1982694642)","Malek Adel (1598872962), Malek Adel (1598872962)","Malik Ghaus (1497820138), Malik Ghaus (1497820138)","Mallik Gunwant (1376527663), Mallik Gunwant (1376527663)","Mandigo Christopher (1669625133), Mandigo Christopher (1669625133)","Mandigo Grace (1528212511), Mandigo Grace (1528212511), Mandigo Grace (1528212511)","MANDYBUR GEORGE (1437188596), MANDYBUR GEORGE (1437188596)","Mangels  Kyle (1174585640), Mangels  Kyle (1174585640)","Manon Jacinto (1326246638), Manon Jacinto (1326246638)","Manwaring Jotham (1679728133), Manwaring Jotham (1679728133)","MANZANARES JAMES (1689616989), MANZANARES JAMES (1689616989)","Manzano Glen (1093945867), Manzano Glen (1093945867), Manzano Glen (1093945867)","Mapstone Timothy (1528036571), Mapstone Timothy (1528036571)","Marchand ERICH (1588758965), Marchand ERICH (1588758965)","Marciano Frederick (1841286390), Marciano Frederick (1841286390)","Margetts Jeffrey (1346391430), Margetts Jeffrey (1346391430)","Marko Nicholas (1114199791), Marko Nicholas (1114199791)","MARLIN EVAN (1316251838), MARLIN EVAN (1316251838)","Marsh W. Richard (1346220407), Marsh W. Richard (1346220407)","Martin Michael (1003958893), Martin Michael (1003958893)","Martin Coleman (18412822043), Martin Coleman (18412822043)","Martin Jeffrey (1053425173), Martin Jeffrey (1053425173)","Martin  Christopher  (1710272042), Martin  Christopher  (1710272042)","Mathern Bruce (1518903491), Mathern Bruce (1518903491)","Matheus Virgilio (1881800571), Matheus Virgilio (1881800571)","Mattingly Thomas (1528038528), Mattingly Thomas (1528038528)","Maughan Peter (1700066768), Maughan Peter (1700066768)","Mayr Matthew (1710945415), Mayr Matthew (1710945415)","McBride Duncan (1700828704), McBride Duncan (1700828704)","McCall Todd (1508054297), McCall Todd (1508054297)","McCanna Shannon (1235396557), McCanna Shannon (1235396557)","McCarthy Richard (1457339715), McCarthy Richard (1457339715)","McCormick Paul (1891843934), McCormick Paul (1891843934)","McCrary Morris (1265435440), McCrary Morris (1265435440)","McDougall Cameron (1598751018), McDougall Cameron (1598751018)","McGirt Matthew (1073665550), McGirt Matthew (1073665550)","McGirt_old Matthew (1073665550), McGirt_old Matthew (1073665550)","McInerney James (1528010048), McInerney James (1528010048)","McLanahan Charles (1225036106), McLanahan Charles (1225036106)","McLoughlin Gregory (1861624751), McLoughlin Gregory (1861624751)","McPHERSON CHRISTOPHER (1679515944), McPHERSON CHRISTOPHER (1679515944)","Mehta Rajesh (1326018326), Mehta Rajesh (1326018326)","Meinhardt Philip (1356592919), Meinhardt Philip (1356592919)","Melamed Itay (1619078656), Melamed Itay (1619078656)","Melisi James (1679532329), Melisi James (1679532329)","Mendoza Lattes Sergio (1255324372), Mendoza Lattes Sergio (1255324372)","Merrell Steven (1063452050), Merrell Steven (1063452050)","Meyer Scott (1518126242), Meyer Scott (1518126242)","Meyer Steven (1780687020), Meyer Steven (1780687020)","Meyers Philip (1033119458), Meyers Philip (1033119458)","Michael L (1164413928), Michael L (1164413928)","Miller James (1083884696), Miller James (1083884696)","Miller Clinton (1699721761), Miller Clinton (1699721761)","Miller John (1487845772), Miller John (1487845772)","Miller Joshua (1790734242), Miller Joshua (1790734242)","Miller Charles (1013980036), Miller Charles (1013980036)","Milligan Brian (1962475145), Milligan Brian (1962475145)","Missios Symeon (1144336538), Missios Symeon (1144336538)","Mkrdichian Edward (1477521607), Mkrdichian Edward (1477521607)","Mobasser Jean-Pierre (1144213703), Mobasser Jean-Pierre (1144213703)","Mocco J (1144425067), Mocco J (1144425067), Mocco J (1144425067)","Mohan Avinash (1134258486), Mohan Avinash (1134258486)","Moise Gaetan (1255580858), Moise Gaetan (1255580858), Moise Gaetan (1255580858)","Monteith Stephen (1689868119), Monteith Stephen (1689868119)","Moody Mark (1821173618), Moody Mark (1821173618)","Moore Daniel (1710047832), Moore Daniel (1710047832)","Morcos Jacques (1205899937), Morcos Jacques (1205899937)","Moreland Douglas (1942285739), Moreland Douglas (1942285739)","Morgan Chad (1013964493), Morgan Chad (1013964493)","Morr Simon (1245541267), Morr Simon (1245541267)","Morrill Kevin (1972694560), Morrill Kevin (1972694560)","Mortazavi Ali (1609863802), Mortazavi Ali (1609863802)","Moshel Yaron (1013111830), Moshel Yaron (1013111830)","Moulding Hugh (1669683165), Moulding Hugh (1669683165)","Muhlbauer Michael (1083603641), Muhlbauer Michael (1083603641)","Mumert Michael (1871747469), Mumert Michael (1871747469)","Mummaneni Praveen (1407960099), Mummaneni Praveen (1407960099)","Munson Gregory (1245239987), Munson Gregory (1245239987)","Murad Gregory (1679658439), Murad Gregory (1679658439)","Murali Raj (1902891831), Murali Raj (1902891831)","Murk Steven (1457330110), Murk Steven (1457330110)","Musacchio Michael (1306036876), Musacchio Michael (1306036876)","Nalbach Stephen (1669672960), Nalbach Stephen (1669672960)","Nanda Anil (1912926643), Nanda Anil (1912926643)","Narayan Kailash (1932214707), Narayan Kailash (1932214707)","Nasr Fadi (1609918416), Nasr Fadi (1609918416)","Nathan David (1194731240), Nathan David (1194731240)","Nauta Haring (1518066539), Nauta Haring (1518066539)","Nduku Valentine (1871770263), Nduku Valentine (1871770263)","Neal Matthew (1023270386), Neal Matthew (1023270386)","Neimat Joseph (1417984329), Neimat Joseph (1417984329)","Nelson Paul (1942203591), Nelson Paul (1942203591)","Neubardt Seth (1306806724), Neubardt Seth (1306806724)","Newell david (1164581054), Newell david (1164581054)","NICHOLS TANN (1932384930), NICHOLS TANN (1932384930)","Nickele Christopher (1285834630), Nickele Christopher (1285834630)","Norton Thomas (1477522167), Norton Thomas (1477522167)","Notarianni Christina (1447460415), Notarianni Christina (1447460415)","Novakovic Roberta (1558412536), Novakovic Roberta (1558412536)","Nudelman Robert (1578554903), Nudelman Robert (1578554903)","Nundkumar Neelesh (1417262692), Nundkumar Neelesh (1417262692)","O_Rourke Daniel (1992779276), O_Rourke Daniel (1992779276)","ONeill Kevin (1770787269), ONeill Kevin (1770787269)","Oberer Daniel (1548354459), Oberer Daniel (1548354459)","Oetting Gregory (1710939889), Oetting Gregory (1710939889)","Ogden Alfred (1174795116), Ogden Alfred (1174795116), Ogden Alfred (1174795116)","Oh Michael (1275508525), Oh Michael (1275508525)","Okor Mamerhi (1205044005), Okor Mamerhi (1205044005)","Olinger Rodney (1942290739), Olinger Rodney (1942290739)","Olive Paul (1851390645), Olive Paul (1851390645)","Oliver T. (1861617755), Oliver T. (1861617755)","Oliver-Smith David (1952394934), Oliver-Smith David (1952394934)","Olivero William (1871609669), Olivero William (1871609669)","Oppenlander Mark (1033373998), Oppenlander Mark (1033373998)","Oren Jonathan (1932333002), Oren Jonathan (1932333002)","Orphanos John (1336346964), Orphanos John (1336346964)","Orringer Daniel (1124141296), Orringer Daniel (1124141296)","Ortiz Rafael (1902089758), Ortiz Rafael (1902089758)","Oswald Timothy (1114965241), Oswald Timothy (1114965241)","Ots Max (1669498093), Ots Max (1669498093)","Owens Roger (1740328178), Owens Roger (1740328178)","Oxford Robert (1437161395), Oxford Robert (1437161395)","Pabaney Aqueel (1275763591), Pabaney Aqueel (1275763591)","Pacult Artur (1730150913), Pacult Artur (1730150913)","Pait T. (1861582348), Pait T. (1861582348)","Palacio Carlos (1346286929), Palacio Carlos (1346286929)","Pallatroni Henry (1003880238), Pallatroni Henry (1003880238)","Pandey Aditya (1184825200), Pandey Aditya (1184825200)","Paonessa Kenneth (1386695096), Paonessa Kenneth (1386695096)","Pappu Saguna (1134268121), Pappu Saguna (1134268121)","Paramasivam Srivinasan  (1609176239), Paramasivam Srivinasan  (1609176239)","Park Michael (1942427117), Park Michael (1942427117), Park Michael (1942427117)","Park Paul (1801993167), Park Paul (1801993167)","Park HaeJoe (1124237144), Park HaeJoe (1124237144)","Parr Ann (1912136284), Parr Ann (1912136284)","Parry Phillip (1770715559), Parry Phillip (1770715559)","Patel Rakesh (1285914069), Patel Rakesh (1285914069)","Patel Akshal (1447451562), Patel Akshal (1447451562)","Patil Parag (1629175989), Patil Parag (1629175989)","Paulsen Richard (1780692996), Paulsen Richard (1780692996)","Payner Troy (1922082866), Payner Troy (1922082866)","Peterson Eric (1801900436), Peterson Eric (1801900436)","Phookan Gautam (1093750978), Phookan Gautam (1093750978)","Pisani David (1932149119), Pisani David (1932149119)","Polifka Adam (1427251230), Polifka Adam (1427251230)","Polly Dave (1669483046), Polly Dave (1669483046)","Ponce Francisco (1245410208), Ponce Francisco (1245410208)","Pool Henry (1497748693), Pool Henry (1497748693)","Porter Randall (1730176389), Porter Randall (1730176389)","Potts Eric (1265424543), Potts Eric (1265424543)","Poulad David (1184695090), Poulad David (1184695090)","Pouratian Nader (1255548418), Pouratian Nader (1255548418)","Powers Alexander (1134397714), Powers Alexander (1134397714)","Pratt Kimball (1588608293), Pratt Kimball (1588608293)","Price Kenneth (1861459802), Price Kenneth (1861459802)","Pride Glenn (1295790012), Pride Glenn (1295790012)","Pritchard Patrick (1619901253), Pritchard Patrick (1619901253)","Pritz Michael (1104829746), Pritz Michael (1104829746)","Prostko E. (1336134840), Prostko E. (1336134840)","Pryputniewicz David (1871790691), Pryputniewicz David (1871790691)","Przybylo Jason (1083908677), Przybylo Jason (1083908677)","Puckett Timothy (1447228952), Puckett Timothy (1447228952)","Pugsley Stanley (1194866889), Pugsley Stanley (1194866889)","Puno Rolando (1043273618), Puno Rolando (1043273618)","QUATTROCCHI KEITH (1730180910), QUATTROCCHI KEITH (1730180910)","Rabb Craig (1538108931), Rabb Craig (1538108931)","Rabin Doron (1821398355), Rabin Doron (1821398355)","Ragnarsson Thorir (1013910363), Ragnarsson Thorir (1013910363)","Rahman Salim (1295782670), Rahman Salim (1295782670)","Rahman Maryam (1821167248), Rahman Maryam (1821167248)","Ramirez Pedro (1689847733), Ramirez Pedro (1689847733)","Randazzo Ciro (1114116464), Randazzo Ciro (1114116464)","Rapacki Thomas (1467494047), Rapacki Thomas (1467494047)","Ray John (1346228889), Ray John (1346228889)","Razack Nizam (1447237045), Razack Nizam (1447237045)","Reavey-Cantwell John (1740363837), Reavey-Cantwell John (1740363837)","Rectenwald John (1992806905), Rectenwald John (1992806905)","Redding Mark (1851399612), Redding Mark (1851399612)","Reddy Chandan (1356558175), Reddy Chandan (1356558175)","Reeder  Ralph (1811990161), Reeder  Ralph (1811990161)","Reichman Mark (1942260617), Reichman Mark (1942260617)","Reichman Howard  (1932123940), Reichman Howard  (1932123940)","Reiter George (189174317), Reiter George (189174317)","Remondino Robert (1841289196), Remondino Robert (1841289196)","Renfro Mark (1003819913), Renfro Mark (1003819913)","Rhee Michael (1124255021), Rhee Michael (1124255021)","Rhoton Eric (1033113949), Rhoton Eric (1033113949)","Rice Robert (1801112271), Rice Robert (1801112271)","Rich Charles (1851351530), Rich Charles (1851351530)","Richardson William (18313286475), Richardson William (18313286475)","Riesenburger Ron (1770775256), Riesenburger Ron (1770775256)","RINGER ANDREW (1134237712), RINGER ANDREW (1134237712)","Ritter Ann (1295813459), Ritter Ann (1295813459)","Rivero Sergio (1730372731), Rivero Sergio (1730372731)","Rivet Dennis (1740260223), Rivet Dennis (1740260223)","Rizk Elias (1316164601), Rizk Elias (1316164601)","Robertson Jon (1871583054), Robertson Jon (1871583054)","Rock Jack  (1215002951), Rock Jack  (1215002951)","Rodgers Richard (1841265089), Rodgers Richard (1841265089)","Rogers R (1417112947), Rogers R (1417112947)","Romero Luis (1678763783), Romero Luis (1678763783)","Roper Steven  (1679500342), Roper Steven  (1679500342)","Rosen David (1265684518), Rosen David (1265684518)","Rosenberg William (1487626768), Rosenberg William (1487626768)","Rosenblum Mark (1124193867), Rosenblum Mark (1124193867)","Roth Patrick  (1760459085), Roth Patrick  (1760459085)","Rughani Anand (1548472343), Rughani Anand (1548472343)","Rumana Christopher (1568438489), Rumana Christopher (1568438489)","Ryken Timothy (1235122359), Ryken Timothy (1235122359), Ryken Timothy (1235122359), Ryken Timothy (1235122359)","Safain Mina (1821228883), Safain Mina (1821228883)","Sahlein Daniel (1578769188), Sahlein Daniel (1578769188)","Sampath Raghuram (1144280538), Sampath Raghuram (1144280538)","Sampson John (1720158553), Sampson John (1720158553)","Sanan Abhay (1366411019), Sanan Abhay (1366411019)","Sanborn  Matthew (1285783688), Sanborn  Matthew (1285783688)","Saphier Paul  (1154516532), Saphier Paul  (1154516532)","Sarkar Atom (1437109584), Sarkar Atom (1437109584)","Sartorius Carl (1407849086), Sartorius Carl (1407849086)","Sather Michael (1235358144), Sather Michael (1235358144)","Sattar Ahsan (1154551554), Sattar Ahsan (1154551554)","Sauter Kent (1679510424), Sauter Kent (1679510424)","Savage Jennifer (1407031354), Savage Jennifer (1407031354)","Savage Jesse (1881828085), Savage Jesse (1881828085)","Sawin Paul (1053361386), Sawin Paul (1053361386)","Scarrow Alan (1972537132), Scarrow Alan (1972537132)","Schermerhorn Thomas (1518962026), Schermerhorn Thomas (1518962026)","Schirmer Clemens (1649486069), Schirmer Clemens (1649486069)","Schlifka Brett (1790728913), Schlifka Brett (1790728913)","Schloesser Peter (1508806233), Schloesser Peter (1508806233)","Schmidt Meic (1740365436), Schmidt Meic (1740365436)","Schmidt Richard (1235219130), Schmidt Richard (1235219130)","Schmidt John  (1962466029), Schmidt John  (1962466029)","Schopick Steven (1205816998), Schopick Steven (1205816998)","Schroeder Kurt (1861461170), Schroeder Kurt (1861461170)","Schwalb Jason (1366497950), Schwalb Jason (1366497950)","Schwarz Jacob (1386686004), Schwarz Jacob (1386686004)","Sciubba Daniel (1043357270), Sciubba Daniel (1043357270)","Scott John (1346246501), Scott John (1346246501)","Selman Warren (1679599542), Selman Warren (1679599542)","Selznick Lee (1104945997), Selznick Lee (1104945997)","Sembrano Jonathan (1932113487), Sembrano Jonathan (1932113487)","Semenoff David (1407877210), Semenoff David (1407877210)","Senatus Patrick (1831381821), Senatus Patrick (1831381821)","Seyfried Donald (1033284773), Seyfried Donald (1033284773)","Shaffrey Mark (1417026055), Shaffrey Mark (1417026055)","Shaffrey Chris (1235208877), Shaffrey Chris (1235208877)","Shah Mitesh (1851394340), Shah Mitesh (1851394340)","Shah Hamid (1679693931), Shah Hamid (1679693931)","Shamie Arya Nick (1619073954), Shamie Arya Nick (1619073954)","Shang Ty (1578711941), Shang Ty (1578711941)","Shanker Srenath (1336591841), Shanker Srenath (1336591841)","Shannon Craig (1427451954), Shannon Craig (1427451954)","Shapiro Scott (1790788321), Shapiro Scott (1790788321)","Sharma Krishn (1235190240), Sharma Krishn (1235190240)","Shaver Ellen (1457306821), Shaver Ellen (1457306821)","Shea Kenneth (1881855187), Shea Kenneth (1881855187)","Shehadi Joseph (1174560890), Shehadi Joseph (1174560890)","Shenai Mahesh (1467660274), Shenai Mahesh (1467660274)","Sherban Ross (1972705077), Sherban Ross (1972705077)","Sherburn Eric (1306808316), Sherburn Eric (1306808316)","Shin Peter (1568522035), Shin Peter (1568522035)","Shirley Eric (1548290125), Shirley Eric (1548290125)","Shrivastava Raj (1184609240), Shrivastava Raj (1184609240)","Shuff Charles (1437248622), Shuff Charles (1437248622)","Shumaker Grant (1841265139), Shumaker Grant (1841265139)","Siddiqui Adnan (1558325951), Siddiqui Adnan (1558325951)","Sillay Karl (1184734030), Sillay Karl (1184734030)","Sills Allen (1225028012), Sills Allen (1225028012)","Silver Jon (1407850233), Silver Jon (1407850233)","Silvidi Julius (1730121385), Silvidi Julius (1730121385)","Simmons Nathan (1972529121), Simmons Nathan (1972529121)","Sin Anthony (1073738613), Sin Anthony (1073738613)","Singh Harshpal (1437317567), Singh Harshpal (1437317567)","Singleton Richard  (1598962094), Singleton Richard  (1598962094)","Siu Alan (1306073457), Siu Alan (1306073457)","SKIDMORE BRADBURY (1477661189), SKIDMORE BRADBURY (1477661189)","Sloan Andrew (1952317554), Sloan Andrew (1952317554)","Slotkin Jonathan (1952333486), Slotkin Jonathan (1952333486)","Smith Mark (1750380580), Smith Mark (1750380580)","Smith Maurice (1912998600), Smith Maurice (1912998600)","Smith Justin (1548463102), Smith Justin (1548463102)","Smith Donald (1568481802), Smith Donald (1568481802)","Smith Ken (1033101126), Smith Ken (1033101126)","Smith Donald (1376557512), Smith Donald (1376557512)","Smith Bryson (1669507984), Smith Bryson (1669507984)","Smith David (1770763732), Smith David (1770763732)","Smithson John (1669465811), Smithson John (1669465811)","Snell Brian (1225021702), Snell Brian (1225021702)","Snyder William (1669451753), Snyder William (1669451753)","Snyder Laura (1366606212), Snyder Laura (1366606212)","Snyder Kenneth (1952628315), Snyder Kenneth (1952628315)","Solomon Robert (1306987227), Solomon Robert (1306987227)","Sorenson Jeffrey (1760472757), Sorenson Jeffrey (1760472757)","Sorte Danielle (1023263704), Sorte Danielle (1023263704)","Spiro David (1932343324), Spiro David (1932343324)","Spiro Richard (1790753622), Spiro Richard (1790753622)","Spurgeon Angela (1235367665), Spurgeon Angela (1235367665)","Stadlan Noam (1962478271), Stadlan Noam (1962478271)","Starke Robert (1821222712), Starke Robert (1821222712)","Steenland Peter (1881814770), Steenland Peter (1881814770)","Steichen John (1053371328), Steichen John (1053371328)","Stephens Byron (1568788974), Stephens Byron (1568788974)","Stern Joseph (1558352831), Stern Joseph (1558352831)","Stern Jack (1730140666), Stern Jack (1730140666)","Stillerman Charles (1477628667), Stillerman Charles (1477628667)","Stippler Martina (1427255140), Stippler Martina (1427255140)","Stockwell David (1861664682), Stockwell David (1861664682)","Stoffman Michael (1003847484), Stoffman Michael (1003847484)","Stouffer Mark (1316131790), Stouffer Mark (1316131790)","Strang Robert (1013962935), Strang Robert (1013962935)","Strom Russell (1851566855), Strom Russell (1851566855)","Stuart Robert (1770734675), Stuart Robert (1770734675)","Suddaby Loubert (1609869783), Suddaby Loubert (1609869783)","Sughrue Michael (1497977359), Sughrue Michael (1497977359)","Sukul Vishad (1194985192), Sukul Vishad (1194985192)","Sullivan Stephen (1033158530), Sullivan Stephen (1033158530)","Sun Hai (1952507774), Sun Hai (1952507774)","Supler Mitchell (1114990553), Supler Mitchell (1114990553)","Suri Muhammad Fareed (1912054214), Suri Muhammad Fareed (1912054214)","Sweasey Thomas (1396798732), Sweasey Thomas (1396798732)","Sweet Jennifer (1790011229), Sweet Jennifer (1790011229)","Syed Ishaq  (1104082676), Syed Ishaq  (1104082676)","Szerlip Nicholas (1932235074), Szerlip Nicholas (1932235074)","Tabbosha Monir  (1780849539), Tabbosha Monir  (1780849539)","Taddonio Rudolph (1346287620), Taddonio Rudolph (1346287620)","Tall Reginald (1699774265), Tall Reginald (1699774265)","Tandon Adesh (1750602686), Tandon Adesh (1750602686)","Taylor Christopher (1841206455), Taylor Christopher (1841206455)","Teal Kevin (1356391387), Teal Kevin (1356391387)","Techy Fernando (1922265537), Techy Fernando (1922265537)","Teff Richard (1982675104), Teff Richard (1982675104)","TEMPEL ZACHARY (1316243264), TEMPEL ZACHARY (1316243264)","Terry Anna (1700081395), Terry Anna (1700081395)","Thambuswamy Michael (1134369556), Thambuswamy Michael (1134369556)","Theodore Nicholas (1982699567), Theodore Nicholas (1982699567)","Thoman William (1821206392), Thoman William (1821206392)","Thomas Michael (1588673461), Thomas Michael (1588673461)","Thompson Byron (1609973437), Thompson Byron (1609973437)","Thompson Van (1952394264), Thompson Van (1952394264)","Tibbs Robert (1871582213), Tibbs Robert (1871582213)","Timmons Shelly (1619950854), Timmons Shelly (1619950854)","Timmons Sherry (1619950854), Timmons Sherry (1619950854)","Tippets Richard (1124088802), Tippets Richard (1124088802)","Tobias Michael (1528234788), Tobias Michael (1528234788)","TOBLER WILLIAM (1265469571), TOBLER WILLIAM (1265469571)","Toczyl Gregory (1104002047), Toczyl Gregory (1104002047)","Tomecek Frank (1366403990), Tomecek Frank (1366403990)","Toms Steven  (1780632679), Toms Steven  (1780632679)","Tomycz Nestor (1316140338), Tomycz Nestor (1316140338)","Tracy Patrick (1750336889), Tracy Patrick (1750336889)","TRAN HOAN (1730228750), TRAN HOAN (1730228750)","Tsung Andrew (1760685390), Tsung Andrew (1760685390)","Tumialan Luis (1861678591), Tumialan Luis (1861678591)","Tummala Ramachandra (1124078027), Tummala Ramachandra (1124078027)","Turner Michael (1003891573), Turner Michael (1003891573)","Turner Dennis (1659331817), Turner Dennis (1659331817)","Turner Jay (1154558021), Turner Jay (1154558021)","Turner Donn (1316975022), Turner Donn (1316975022)","Tuttle Jonathan (1871708768), Tuttle Jonathan (1871708768)","Upadhyaya Cheerag (1720101827), Upadhyaya Cheerag (1720101827)","Uribe Juan  (1801951116), Uribe Juan  (1801951116)","Uribe Juan (1801951116), Uribe Juan (1801951116)","Valadka Alex (1881633709), Valadka Alex (1881633709)","Valdivia Juan (1043413412), Valdivia Juan (1043413412)","Vale Fernando (1710906052), Vale Fernando (1710906052)","Vamanan Karthik (1033141635), Vamanan Karthik (1033141635)","Van Hal Michael (1710274147), Van Hal Michael (1710274147)","Van Poppel Mark (1407062235), Van Poppel Mark (1407062235)","VanDerVeer Craig (1184622060), VanDerVeer Craig (1184622060)","Vanni Steven (1659396448), Vanni Steven (1659396448), Vanni Steven (1659396448)","Vernon Brian (1265639280), Vernon Brian (1265639280)","Vigna Franco (1760489736), Vigna Franco (1760489736)","Villalobos Hunaldo (1457338949), Villalobos Hunaldo (1457338949), Villalobos Hunaldo (1457338949)","Vingan Roy (1356318950), Vingan Roy (1356318950)","Virk Michael (1770719320), Virk Michael (1770719320)","Virojanapa Justin (1598063612), Virojanapa Justin (1598063612)","Vollmer Dennis (1013950047), Vollmer Dennis (1013950047)","Vresilovic Edward (1588606420), Vresilovic Edward (1588606420)","WADHWA RISHI (1841401734), WADHWA RISHI (1841401734)","Wadon Carol (1619073590), Wadon Carol (1619073590)","Wait Scott (1831379890), Wait Scott (1831379890)","Walker Matthew (1184688293), Walker Matthew (1184688293)","Walsh Michael (1922211788), Walsh Michael (1922211788)","Walzman Daniel (1407823727), Walzman Daniel (1407823727)","Wanebo John (1588625313), Wanebo John (1588625313)","Wang Vincent (1568584769), Wang Vincent (1568584769)","Wang Michael (1053347906), Wang Michael (1053347906), Wang Michael (1053347906)","Wang Huan (John) (1790908168), Wang Huan (John) (1790908168)","Ward John (1891745774), Ward John (1891745774)","Warnack Worthy (1922180314), Warnack Worthy (1922180314)","Warner Stephen (1164453106), Warner Stephen (1164453106)","WARNICK RONALD (1588694327), WARNICK RONALD (1588694327)","Wascher Thomas (1447242573), Wascher Thomas (1447242573)","Watridge Clarence (1013918085), Watridge Clarence (1013918085)","Weaver Jason (1972657252), Weaver Jason (1972657252)","Weaver Kyle (1427145549), Weaver Kyle (1427145549)","Wehman Joseph (1023141371), Wehman Joseph (1023141371)","Weinstein Philip (1902834328), Weinstein Philip (1902834328)","Welch Babu (1891759528), Welch Babu (1891759528)","Weller Simcha (1225062987), Weller Simcha (1225062987)","Welling Blake (1710151980), Welling Blake (1710151980)","Wells-Roth David (1366576845), Wells-Roth David (1366576845)","West Kristoffer (1285898650), West Kristoffer (1285898650)","White William (1689660078), White William (1689660078)","White Benjamin (1417924143), White Benjamin (1417924143)","White Jonathan (1477512507), White Jonathan (1477512507)","Whiting Donald (1194710608), Whiting Donald (1194710608)","Whitten Mathew (1215058011), Whitten Mathew (1215058011)","Whitworth Louis (1679532709), Whitworth Louis (1679532709)","Widdel Lars (1447397708), Widdel Lars (1447397708)","Wienecke Robert (1669461000), Wienecke Robert (1669461000)","Wilberger Jack (1245232081), Wilberger Jack (1245232081)","Wiles David (1851338628), Wiles David (1851338628)","Williams Brian (1548436660), Williams Brian (1548436660)","Williamson Richard (1609040609), Williamson Richard (1609040609)","Willis Brian (1821014648), Willis Brian (1821014648)","Wilson John A (1467432047), Wilson John A (1467432047)","Wilson James (1093724912), Wilson James (1093724912)","Wilson Jonathan L (1376727354), Wilson Jonathan L (1376727354)","Winer Jesse (1326295122), Winer Jesse (1326295122)","Winters Dennis (1194769604), Winters Dennis (1194769604)","Wirt Timothy (1992741839), Wirt Timothy (1992741839)","Witham Timothy (1841236825), Witham Timothy (1841236825)","Wolfe Stacey (1588897029), Wolfe Stacey (1588897029)","Wolinsky Jean-Paul (1265478119), Wolinsky Jean-Paul (1265478119)","Woodrow Sarah (1306077854), Woodrow Sarah (1306077854)","Woosley Ronald (1790746493), Woosley Ronald (1790746493)","Worth Robert (1407859028), Worth Robert (1407859028)","Worthington Ward (1952372138), Worthington Ward (1952372138)","Wray Steve (168967219), Wray Steve (168967219)","Wu Julian (1205887031), Wu Julian (1205887031)","Yamamoto Junichi (1811199367), Yamamoto Junichi (1811199367)","Yannopoulos Aris (1881634632), Yannopoulos Aris (1881634632)","Yarbrough Chester (1457589939), Yarbrough Chester (1457589939)","Yaun Amanda (1679656888), Yaun Amanda (1679656888)","Yavagal Dileep (1689661217), Yavagal Dileep (1689661217)","Yazbak Philip (1538119649), Yazbak Philip (1538119649)","Yen Chen-Po (1700014222), Yen Chen-Po (1700014222)","Yonas Howard (1932293982), Yonas Howard (1932293982)","York Jonathan (1366760563), York Jonathan (1366760563)","Young Ronald (1235131103), Young Ronald (1235131103)","Yu Alexander (1457612038), Yu Alexander (1457612038)","Zacharia Brad (1669631552), Zacharia Brad (1669631552)","Zacko Joseph (1316156144), Zacko Joseph (1316156144)","Zahos Peter (1356305049), Zahos Peter (1356305049)","ZAHRAWI FAISSAL (1578596003), ZAHRAWI FAISSAL (1578596003)","Zampella Edward  (1821055914), Zampella Edward  (1821055914)","Zerick William (1568469609), Zerick William (1568469609)","Zhang Donald (1609151968), Zhang Donald (1609151968)","Ziewacz John (1215050315), Ziewacz John (1215050315)","Zoller John (1174550917), Zoller John (1174550917)"))
                             #data$surg_location.factor = factor(data$surg_location,levels=c("-  -  (19423792284), -  -  (19423792284)","-  -  (91-0433740), -  -  (91-0433740)","Essex Specialized Surgery Center - West Orange  - NJ (223708021), Essex Specialized Surgery Center - West Orange  - NJ (223708021)","IU Health Bloomington Hospital - Bloomington - IN (1912984451), IU Health Bloomington Hospital - Bloomington - IN (1912984451)","IU Health Methodist - Indianapolis - In (1679646111), IU Health Methodist - Indianapolis - In (1679646111)","Tulsa Spine and Specialty Hospital - Tulsa - OK (1033185293), Tulsa Spine and Specialty Hospital - Tulsa - OK (1033185293)","Advanced Spine Surgery Center - Union  - NJ (1366757080), Advanced Spine Surgery Center - Union  - NJ (1366757080)","Advocate Bromenn Medical Center - Normal - Illinois (1962424036), Advocate Bromenn Medical Center - Normal - Illinois (1962424036)","Albany Medical Center Hospital - Albany - NY (1376577247), Albany Medical Center Hospital - Albany - NY (1376577247)","Allegheny General Hospital - Pittsburgh - PA (1811246846), Allegheny General Hospital - Pittsburgh - PA (1811246846)","Allen Memorial Hospital - Waterloo -  IA  (1336231091), Allen Memorial Hospital - Waterloo -  IA  (1336231091)","Arizona Orthopedic and Surgical Specialty Hospital - Chandler - AZ (1124163530), Arizona Orthopedic and Surgical Specialty Hospital - Chandler - AZ (1124163530)","Arrowhead Hospital  - Glendale - AZ (1326022765), Arrowhead Hospital  - Glendale - AZ (1326022765)","Audubon St Francis Medical Center - Colorado Springs - CO (1174592844), Audubon St Francis Medical Center - Colorado Springs - CO (1174592844)","Aurora St Lukes Medical Center -  -  (1841434644), Aurora St Lukes Medical Center -  -  (1841434644)","Baptist Hospital East - Louisville - KY (1265539498), Baptist Hospital East - Louisville - KY (1265539498)","Baptist Hospital of Miami -  -  (1528042884), Baptist Hospital of Miami -  -  (1528042884)","Baptist Memorial Hospital - Memphis - TN (1578527172), Baptist Memorial Hospital - Memphis - TN (1578527172)","Bay Area Medical Center - Marinette - WI (1043397177), Bay Area Medical Center - Marinette - WI (1043397177)","Baycare Aurora Llc - Green Bay - WI (1255387726), Baycare Aurora Llc - Green Bay - WI (1255387726)","Bellin Health Medical Center - Green Bay - WI  (1891740585), Bellin Health Medical Center - Green Bay - WI  (1891740585)","Berlin Memorial Hospital - Berlin - WI (1760413777), Berlin Memorial Hospital - Berlin - WI (1760413777)","BETHESDA NORTH HOSPITAL - CINCINNATI - OH (1710383625), BETHESDA NORTH HOSPITAL - CINCINNATI - OH (1710383625)","Bon Secours St Francis Hospital - Charleston - SC (1851361778), Bon Secours St Francis Hospital - Charleston - SC (1851361778)","Bon Secours St Marys Hospital - Henrico - Virginia (1962464016), Bon Secours St Marys Hospital - Henrico - Virginia (1962464016)","Bristol Regional Medical Center - Bristol - TN (1124058615), Bristol Regional Medical Center - Bristol - TN (1124058615)","Buffalo General Hospital - Buffalo - NY (1043235880), Buffalo General Hospital - Buffalo - NY (1043235880)","Butler Memorial Hospital - Butler - PA (1447317896), Butler Memorial Hospital - Butler - PA (1447317896)","Carle Foundation Hospital - Urbana - IL (1013071653), Carle Foundation Hospital - Urbana - IL (1013071653)","Carolina Center for Specialty Surgery - Charlotte - NC (1760418917), Carolina Center for Specialty Surgery - Charlotte - NC (1760418917)","Carolinas Medical Center - Charlotte - NC (1295789907), Carolinas Medical Center - Charlotte - NC (1295789907)","Carolinas Medical Center Northeast - Concord - NC  (1487866315), Carolinas Medical Center Northeast - Concord - NC  (1487866315)","Carolinas Medical Center Pineville - Charlotte - NC (1821039975), Carolinas Medical Center Pineville - Charlotte - NC (1821039975)","Carolinas Medical Center- University - Charlotte - NC (1346297892), Carolinas Medical Center- University - Charlotte - NC (1346297892)","Carondelet St Josephs Hospital - Tucson - AZ (860455920), Carondelet St Josephs Hospital - Tucson - AZ (860455920)","Chandler Regional Medical Center - Chandler - AZ (1871910968), Chandler Regional Medical Center - Chandler - AZ (1871910968)","Charleston Area Medical Center - Charleston - WV (1952390239), Charleston Area Medical Center - Charleston - WV (1952390239)","Charleston Area Medical Center Teays Valley Hospital, Inc. - Hurricane - WV (1144277708)","Chippenham Johnston Willis - Richmond - VA (1598708513), Chippenham Johnston Willis - Richmond - VA (1598708513)","CHRIST HOSPITAL - CINCINNATI - OH (1780633289), CHRIST HOSPITAL - CINCINNATI - OH (1780633289)","Christus Trinity Mother Frances Hospital - Tyler - Texas (1679578439), Christus Trinity Mother Frances Hospital - Tyler - Texas (1679578439)","Community Hospital -  -  (1003918210), Community Hospital -  -  (1003918210)","Covenant Medical Center  Inc - Waterloo - Iowa (1700827896), Covenant Medical Center  Inc - Waterloo - Iowa (1700827896)","Dartmouth-Hitchcock Medical Center - Lebanon - New Hampshire (1023092053), Dartmouth-Hitchcock Medical Center - Lebanon - New Hampshire (1023092053)","Dixie Regional Medical Center - St. George - Utah (1366452880), Dixie Regional Medical Center - St. George - Utah (1366452880)","Doctors Hospital of Augusta - Augusta - GA (1386698918), Doctors Hospital of Augusta - Augusta - GA (1386698918)","Duke Health Raleigh Hospital - Raleigh - NC (1013916352), Duke Health Raleigh Hospital - Raleigh - NC (1013916352)","Duke Regional Hospital - Durham - NC (1871592113), Duke Regional Hospital - Durham - NC (1871592113)","Duke University hospital - Durham - NC (1992703540), Duke University hospital - Durham - NC (1992703540)","Dunes Surgical Hospital LP - North Sioux City - SD (1093714073), Dunes Surgical Hospital LP - North Sioux City - SD (1093714073)","East Texas Medical Center  - Tyler - Texas (1235256884), East Texas Medical Center  - Tyler - Texas (1235256884)","Endo Surgical Center - Union - NJ (1740261882), Endo Surgical Center - Union - NJ (1740261882)","Englewood Hospital - Englewood - NJ (1083612881), Englewood Hospital - Englewood - NJ (1083612881)","Eskenazi Hospital - Indianapolis - IN (1568407310), Eskenazi Hospital - Indianapolis - IN (1568407310)","Evanston Hospital - Evanston - IL (1184670549), Evanston Hospital - Evanston - IL (1184670549)","Faith Regional Medical Center - Norfolk  - NE (1285676544), Faith Regional Medical Center - Norfolk  - NE (1285676544)","FirstHealth Moore Regional Hospital - Pinehurst  - NC (1255591566), FirstHealth Moore Regional Hospital - Pinehurst  - NC (1255591566)","Florida Hospital - Orlando - FL (1306938071), Florida Hospital - Orlando - FL (1306938071)","Florida Hospital Celebration Health - Celebration - FLORIDA (1386189520), Florida Hospital Celebration Health - Celebration - FLORIDA (1386189520)","Forbes Regional Hospital - Monroeville - Pennsylvania (1679592380), Forbes Regional Hospital - Monroeville - Pennsylvania (1679592380)","Franciscan Health St. Elizabeth Lafayette Central - Lafayette - IN (1538253521), Franciscan Health St. Elizabeth Lafayette Central - Lafayette - IN (1538253521)","Franciscan Health St. Elizabeth Layfayette East - Lafayette - IN (1356435341), Franciscan Health St. Elizabeth Layfayette East - Lafayette - IN (1356435341)","Franciscan Health St. Francis Hospital Indianapolis - Indianapolis - IN (1386749893), Franciscan Health St. Francis Hospital Indianapolis - Indianapolis - IN (1386749893)","Franciscan Surgery Center, LLC - Indianapolis - IN (1184601098)","Geisinger Community Medical Center - Scranton - PA (1366444507), Geisinger Community Medical Center - Scranton - PA (1366444507)","Geisinger Medical Center Danville - Danville - PA (1235215427), Geisinger Medical Center Danville - Danville - PA (1235215427)","Geisinger Wyoming Valley - Wilkes Barre - PA (1275620585), Geisinger Wyoming Valley - Wilkes Barre - PA (1275620585)","GOOD SAMARITAN HOSPITAL - CINCINNATI - OH (1073058632), GOOD SAMARITAN HOSPITAL - CINCINNATI - OH (1073058632)","Grant Medical Center - Columbus - Ohio (1255377149), Grant Medical Center - Columbus - Ohio (1255377149)","Greensboro Specialty Surgical Center - Greensboro - NC (1346207875), Greensboro Specialty Surgical Center - Greensboro - NC (1346207875)","Greenwich Hospital - Greenwich - Connecticut (1609846088), Greenwich Hospital - Greenwich - Connecticut (1609846088)","Hackensack University Medical Center - Hackensack - NJ (1603862036), Hackensack University Medical Center - Hackensack - NJ (1603862036)","Henrico Doctors Hospital - Forest Campus - Richmond - VA (1194762294), Henrico Doctors Hospital - Forest Campus - Richmond - VA (1194762294)","Henry Ford Hospital  - Detroit - MI (1134144801), Henry Ford Hospital  - Detroit - MI (1134144801)","Henry Ford West Bloomfield Hospital - West Bloomfield - MI (1407867559), Henry Ford West Bloomfield Hospital - West Bloomfield - MI (1407867559)","Heritage Valley Beaver - Beaver - PA (1063422053), Heritage Valley Beaver - Beaver - PA (1063422053)","Highland Park Hospital - Highland Park - IL (1609817220), Highland Park Hospital - Highland Park - IL (1609817220)","Hillcrest Medical Center - Tulsa - OK (1629057229), Hillcrest Medical Center - Tulsa - OK (1629057229)","Holland Hospital - Holland - MI (1871672618), Holland Hospital - Holland - MI (1871672618)","Holy Name Medical Center - Teaneck - NJ (1043389349), Holy Name Medical Center - Teaneck - NJ (1043389349)","Hudson Crossing Surgery Center: - Fort Lee - NJ (1457379158), Hudson Crossing Surgery Center: - Fort Lee - NJ (1457379158)","Indiana Spine Hospital - Carmel - IN (1316324403), Indiana Spine Hospital - Carmel - IN (1316324403)","Intermountain Medical Center - Murray - Utah (1043220650), Intermountain Medical Center - Murray - Utah (1043220650)","IU Health Arnett - Lafayette - IN (1326296211), IU Health Arnett - Lafayette - IN (1326296211)","IU Health Ball Memorial Hospital - Muncie - IN (1225195340), IU Health Ball Memorial Hospital - Muncie - IN (1225195340)","IU Health Methodist Plaza East - Indianapolis - IN (1326424144), IU Health Methodist Plaza East - Indianapolis - IN (1326424144)","IU Health Saxony Hospital - Fishers - Indiana (1477846145), IU Health Saxony Hospital - Fishers - Indiana (1477846145)","IU Health West - Avon - IN (1063443455), IU Health West - Avon - IN (1063443455)","IU North - Carmel - IN (1568492916), IU North - Carmel - IN (1568492916)","Jackson Madison County General Hospital - Jackson - TN (1467493916), Jackson Madison County General Hospital - Jackson - TN (1467493916)","Jackson Memorial Hospital - Miami - Florida (1225033020), Jackson Memorial Hospital - Miami - Florida (1225033020)","JEWISH HOSPITAL - CINCINNATI - OH (1740635317), JEWISH HOSPITAL - CINCINNATI - OH (1740635317)","Jewish Hospital - Louisville - KY (1073678330), Jewish Hospital - Louisville - KY (1073678330)","JOHN C. LINCOLN NORTH MOUNTAIN HOSPITAL - Phoenix - AZ (1770690695), JOHN C. LINCOLN NORTH MOUNTAIN HOSPITAL - Phoenix - AZ (1770690695)","Johns Hopkins Bayview Medical Center - Baltimore - MD (1790700904), Johns Hopkins Bayview Medical Center - Baltimore - MD (1790700904)","Johns Hopkins Hospital - Baltimore - MD (1215106653), Johns Hopkins Hospital - Baltimore - MD (1215106653)","Kenmore Mercy Hospital - Kenmore - NY (1770598104), Kenmore Mercy Hospital - Kenmore - NY (1770598104)","Kosair Childrens Hospital - Louisville - KY (1982609442), Kosair Childrens Hospital - Louisville - KY (1982609442)","Lawrence Hospital - Bronxville - New York (1134131030), Lawrence Hospital - Bronxville - New York (1134131030)","Lees Summit Medical Center - Lees Summit - MO (1225085871), Lees Summit Medical Center - Lees Summit - MO (1225085871)","Lenox Hill Hospital - New York - New York (1073652434), Lenox Hill Hospital - New York - New York (1073652434)","Lester E Cox Medical Centers - Springfield  - Missouri (1508169764), Lester E Cox Medical Centers - Springfield  - Missouri (1508169764)","Logan Regional - Logan - Utah (1831108497), Logan Regional - Logan - Utah (1831108497)","Long Island Jewish Hospital - New Hyde Park - new York (1801128921), Long Island Jewish Hospital - New Hyde Park - new York (1801128921)","Lynchburg General Hospital - Lynchburg - Virginia (1679677983), Lynchburg General Hospital - Lynchburg - Virginia (1679677983)","Maine Medical Center  - Portland  - Maine  (1811917222), Maine Medical Center  - Portland  - Maine  (1811917222)","Malo Medical Center - Rutherford - NJ (1760757165), Malo Medical Center - Rutherford - NJ (1760757165)","MAYFIELD SPINE SURGERY CENTER - CINCINNATI - OH (117485246), MAYFIELD SPINE SURGERY CENTER - CINCINNATI - OH (117485246)","Mayo Clinic Hospital - Rochester - Rochester - MN (1922074434), Mayo Clinic Hospital - Rochester - Rochester - MN (1922074434)","McKay Dee - Ogden - Utah (1194749580), McKay Dee - Ogden - Utah (1194749580)","Memorial Hermann Katy -  -  (1932152337), Memorial Hermann Katy -  -  (1932152337)","Memorial Hermann Memorial City -  -  (1740233782), Memorial Hermann Memorial City -  -  (1740233782)","Memorial Hermann Northeast -  -  (1295843787), Memorial Hermann Northeast -  -  (1295843787)","Memorial Hermann Southeast -  -  (1730132234), Memorial Hermann Southeast -  -  (1730132234)","Memorial Hermann Sugar Land -  -  (1295788735), Memorial Hermann Sugar Land -  -  (1295788735)","Memorial Hermann TMC -  -  (1982666111), Memorial Hermann TMC -  -  (1982666111)","Memorial Medical Center - Springfield - IL (1255317590), Memorial Medical Center - Springfield - IL (1255317590)","Memorial Regional Medical Center - Mechanicsville  - VA (1912969064), Memorial Regional Medical Center - Mechanicsville  - VA (1912969064)","Memphis VMAC - Memphis - TN (1255381695), Memphis VMAC - Memphis - TN (1255381695)","MERCY HEALTH - ANDERSON HOSPITAL, LLC - CINCINNATI - OH (1235239211)","MERCY HEALTH - FAIRFIELD HOSPITAL, LLC - FAIRFIELD - OH (1467552471)","MERCY HEALTH - WEST HOSPITAL, LLC - CINCINNATI - OH (1912007931)","Mercy Hospital - Springfield - MO (1578504056), Mercy Hospital - Springfield - MO (1578504056)","Mercy Hospital of Buffalo - Buffalo - NY (1164464921), Mercy Hospital of Buffalo - Buffalo - NY (1164464921)","Mercy Hospital Oklahoma City Inc - Oklahoma City - Oklahoma (1184721722), Mercy Hospital Oklahoma City Inc - Oklahoma City - Oklahoma (1184721722)","Mercy Medical Center - Oshkosh - WI  (1023065356), Mercy Medical Center - Oshkosh - WI  (1023065356)","Mercy Medical Center Sioux City - Sioux City - IA (1538199617), Mercy Medical Center Sioux City - Sioux City - IA (1538199617)","Methodist Healthcare Memphis Hospitals - Memphis - TN (1558365890), Methodist Healthcare Memphis Hospitals - Memphis - TN (1558365890)","Methodist Hospital -  -  (1083804876), Methodist Hospital -  -  (1083804876)","Midhudson Regional Hospital - Poughkeepsie - New York (1598181091), Midhudson Regional Hospital - Poughkeepsie - New York (1598181091)","Ministry Door County Memorial - Sturgeon Bay - WI (1093743874), Ministry Door County Memorial - Sturgeon Bay - WI (1093743874)","Mission Hospital - Asheville - NC (1881626075), Mission Hospital - Asheville - NC (1881626075)","Montefiore Medical Center - Yonkers - New York (1053794875), Montefiore Medical Center - Yonkers - New York (1053794875)","Montefiore New Rochelle Hospital - New Rochelle - New York (1497179303), Montefiore New Rochelle Hospital - New Rochelle - New York (1497179303)","Morristown Memorial Hospital - Morristown - NJ (1053384776), Morristown Memorial Hospital - Morristown - NJ (1053384776)","Moses Cone Hospital - Greensboro - NC (1356372064), Moses Cone Hospital - Greensboro - NC (1356372064)","Mount Sinai - New York - New York (1932103413), Mount Sinai - New York - New York (1932103413)","Mountainside Hospital - Glen Ridge - NJ (1710298096), Mountainside Hospital - Glen Ridge - NJ (1710298096)","Naab Road Surgery Center LLC - Indianapolis - IN (1447297684), Naab Road Surgery Center LLC - Indianapolis - IN (1447297684)","New York Presbyterian Weill Cornell Medical Center - New York - NY (1952332801), New York Presbyterian Weill Cornell Medical Center - New York - NY (1952332801)","New York-Presbyterian Columbia University Medical Center - New York - NY (1194832477), New York-Presbyterian Columbia University Medical Center - New York - NY (1194832477)","Niagara Falls Memorial Medical Center -  -  (1285717298), Niagara Falls Memorial Medical Center -  -  (1285717298)","Norman Regional Hospital - Norman - OK (1700882578), Norman Regional Hospital - Norman - OK (1700882578)","North Meridian Surgery Center - Carmel - IN (1710924089), North Meridian Surgery Center - Carmel - IN (1710924089)","NorthBay Medical Center -  -  (1285812024), NorthBay Medical Center -  -  (1285812024)","Northern Westchester Hospital - mount kisco - NY (1912992215), Northern Westchester Hospital - mount kisco - NY (1912992215)","Northshore University Hospital - Manhasset - New York (1366459570), Northshore University Hospital - Manhasset - New York (1366459570)","Norton Brownsboro Hospital - Louisville - KY (1447388335), Norton Brownsboro Hospital - Louisville - KY (1447388335)","Norton Hospital - Louisville - KY (1891799227), Norton Hospital - Louisville - KY (1891799227)","Norton Surburban Hospital - Louisville - KY (1831195908), Norton Surburban Hospital - Louisville - KY (1831195908)","Oklahoma Spine Hospital LLC - Oklahoma City - Oklahoma (1699745893), Oklahoma Spine Hospital LLC - Oklahoma City - Oklahoma (1699745893)","Orlando Regional Medical Center - Orlando - FL (1184709057), Orlando Regional Medical Center - Orlando - FL (1184709057)","Orthopedic and Spine Center of Southern Colorado - Colorado Springs - CO (1942540851), Orthopedic and Spine Center of Southern Colorado - Colorado Springs - CO (1942540851)","OSI-Orthopedic & Sports Institute of the Fox Valley - Appleton - Wi (1780628925), OSI-Orthopedic & Sports Institute of the Fox Valley - Appleton - Wi (1780628925)","OU Medical Center - Oklahoma City - OK (1780631390), OU Medical Center - Oklahoma City - OK (1780631390)","Overlook Medical Center - Summit - NJ (1740254143), Overlook Medical Center - Summit - NJ (1740254143)","PA Brain & Spine Institute -  -  (1003287954), PA Brain & Spine Institute -  -  (1003287954)","Palisades Medical Center - North Bergen - NJ (1093736001), Palisades Medical Center - North Bergen - NJ (1093736001)","Pascack Valley Hospital - Westwood - NJ (1811992480), Pascack Valley Hospital - Westwood - NJ (1811992480)","Penrose Main Hospital - Colorado Springs - CO (1932112125), Penrose Main Hospital - Colorado Springs - CO (1932112125)","Phelps Memorial Hospital - Sleepy Hollow - New York (1720185267), Phelps Memorial Hospital - Sleepy Hollow - New York (1720185267)","Phoenix Spine Surgery Center - Goodyear - AZ (1891175188), Phoenix Spine Surgery Center - Goodyear - AZ (1891175188)","Piedmont Hospital - Atlanta - GA (1962461681), Piedmont Hospital - Atlanta - GA (1962461681)","Piedmont Medical Center - Rock Hill - SC (1457382483), Piedmont Medical Center - Rock Hill - SC (1457382483)","Portsmouth Regional Hospital - Portsmouth - New Hampshire (1518913607), Portsmouth Regional Hospital - Portsmouth - New Hampshire (1518913607)","Poudre Valley Hospital - Fort Collins - CO (1760492714), Poudre Valley Hospital - Fort Collins - CO (1760492714)","Presbyterian Hospital  - Charlotte - NC (1881647204), Presbyterian Hospital  - Charlotte - NC (1881647204)","Princeton Community Hospital - Princeton - WV (1093917643), Princeton Community Hospital - Princeton - WV (1093917643)","Putnam Hospital Center - Carmel - New York (1134133622), Putnam Hospital Center - Carmel - New York (1134133622)","Regional Medical Center at Memphis - Memphis - TN (1144213117), Regional Medical Center at Memphis - Memphis - TN (1144213117)","Regional West Medical Center - Scottsbluff - NE (1639101199), Regional West Medical Center - Scottsbluff - NE (1639101199)","Research Medical Center - Kansas City - MO (1134187842), Research Medical Center - Kansas City - MO (1134187842)","Riverside Methodist Hospital - Columbus - Ohio (1467484972), Riverside Methodist Hospital - Columbus - Ohio (1467484972)","Roper Hospital - Charleston - SC (1962472860), Roper Hospital - Charleston - SC (1962472860)","Roper St Francis Mount Pleasant Hospital - Mount Pleasant  - SC (1255645644), Roper St Francis Mount Pleasant Hospital - Mount Pleasant  - SC (1255645644)","Saint Clares Hospital - Denville - NJ (1699778001), Saint Clares Hospital - Denville - NJ (1699778001)","Saint Francis Hospital - Hartford - Connecticut (1407833486), Saint Francis Hospital - Hartford - Connecticut (1407833486)","Saint Francis Hospital - Memphis - TN (1952326977), Saint Francis Hospital - Memphis - TN (1952326977)","Saint Francis Medical Center - Peoria - IL (1043260482), Saint Francis Medical Center - Peoria - IL (1043260482)","Saint Lukes Hospital of Kansas City - Kansas City - MO (1063494177), Saint Lukes Hospital of Kansas City - Kansas City - MO (1063494177)","Same Day Procedures LLC - Clifton - NJ (1487073417), Same Day Procedures LLC - Clifton - NJ (1487073417)","Sandoval Regional Medical Center - Rio Rancho - New Mexico (1649556200), Sandoval Regional Medical Center - Rio Rancho - New Mexico (1649556200)","Scottsdale Osborn Medical Center -  -  (1811951429), Scottsdale Osborn Medical Center -  -  (1811951429)","Self Regional Healthcare - Greenwood - SC (1023046612), Self Regional Healthcare - Greenwood - SC (1023046612)","Semmes Murphey Surgery Center - Memphis - TN (1447329990), Semmes Murphey Surgery Center - Memphis - TN (1447329990)","Senate Street Surgery Center LLC - Indianapolis - IN (1669559928), Senate Street Surgery Center LLC - Indianapolis - IN (1669559928)","Shands Teaching Hospital & Clinics Inc - Gainesville - FL (1699874248), Shands Teaching Hospital & Clinics Inc - Gainesville - FL (1699874248)","Sister of Charity Hospital - Cheektowaga - New York (1043455199), Sister of Charity Hospital - Cheektowaga - New York (1043455199)","Sisters of Charity Hospital - Buffalo - NY (1790727543), Sisters of Charity Hospital - Buffalo - NY (1790727543)","Skokie Hospital - Skokie - IL (1396790069), Skokie Hospital - Skokie - IL (1396790069)","South Carolina Spine Center - Greenwood - SC (1407887003), South Carolina Spine Center - Greenwood - SC (1407887003)","Spectrum Zeeland - Zeeland - MI (1275536344), Spectrum Zeeland - Zeeland - MI (1275536344)","St  Josephs Regional Medical Center - Paterson - NJ (1811158066), St  Josephs Regional Medical Center - Paterson - NJ (1811158066)","St Agnes Hospital -  -  (1346228541), St Agnes Hospital -  -  (1346228541)","St Barnabas Medical Center - Livingston - NJ (1457544942), St Barnabas Medical Center - Livingston - NJ (1457544942)","St Cloud Hospital - St. Cloud - Minnesota (1215118989), St Cloud Hospital - St. Cloud - Minnesota (1215118989)","ST ELIZABETH MEDICAL CENTER, INC - EDGEWOOD - KY (1467492421), INC - FLORENCE - KY (1154365062), INC - FT THOMAS - KY (1740221795)","St Francis Medical Center North - Colorado Springs - CO (1720211378), St Francis Medical Center North - Colorado Springs - CO (1720211378)","St John Broken Arrow - Broken Arrow - OK (1497988596), St John Broken Arrow - Broken Arrow - OK (1497988596)","St John Medical Center - Tulsa - Oklahoma  (1154417368), St John Medical Center - Tulsa - Oklahoma  (1154417368)","St Josephs Hospital and Medical Ctr - Phoenix - AZ (1982733655), St Josephs Hospital and Medical Ctr - Phoenix - AZ (1982733655)","St Lukes Regional Medical Center - Sioux City - IA (1962594622), St Lukes Regional Medical Center - Sioux City - IA (1962594622)","St Lukes  Hospital in Quakertown - Quakertown - PA (1669405072), St Lukes  Hospital in Quakertown - Quakertown - PA (1669405072)","St Lukes Hospital  in Allentown - Allentown - PA (1548293954), St Lukes Hospital  in Allentown - Allentown - PA (1548293954)","St Lukes Hospital Anderson campus - EASTON - PA (1497050470), St Lukes Hospital Anderson campus - EASTON - PA (1497050470)","St Lukes Hospital in Bethlehem - Bethlehem - PA (1013933175), St Lukes Hospital in Bethlehem - Bethlehem - PA (1013933175)","St Vincent Hospital and Health Care Center Inc - Indianapolis - IN (1306898960), St Vincent Hospital and Health Care Center Inc - Indianapolis - IN (1306898960)","St. Elizabeth Hospital - Appleton - WI (1407803638), St. Elizabeth Hospital - Appleton - WI (1407803638)","St. Francis Hospital - Charleston - WV (1891732889), St. Francis Hospital - Charleston - WV (1891732889)","St. Johns Hospital - Springfield - IL (1518949353), St. Johns Hospital - Springfield - IL (1518949353)","St. Lukes Warren Hospital - Phillipsburg - NJ (1760488266), St. Lukes Warren Hospital - Phillipsburg - NJ (1760488266)","St. Marys Hospital -  -  (1841266194), St. Marys Hospital -  -  (1841266194)","Stamford Hospital - Stamford - Connecticut (1356331425), Stamford Hospital - Stamford - Connecticut (1356331425)","Surgical Specialty Hospital of Arizona - Phoenix - AZ (1902881295), Surgical Specialty Hospital of Arizona - Phoenix - AZ (1902881295)","Swedish Hospital and Medical Center - Cherry Hill - Seattle - Washington (1356496582), Swedish Hospital and Medical Center - Cherry Hill - Seattle - Washington (1356496582)","Tallahassee Memorial Healthcare Inc - Tallahassee - FL (1437177664), Tallahassee Memorial Healthcare Inc - Tallahassee - FL (1437177664)","Tampa General Hospital - Tampa - FL (1235196510), Tampa General Hospital - Tampa - FL (1235196510)","Test hospital -  -  (99999999), Test hospital -  -  (99999999)","Texas Spine and Joint Hospital LTD - Tyler  - Texas (1942292255), Texas Spine and Joint Hospital LTD - Tyler  - Texas (1942292255)","The Milton S. Hershey Medical Center - Hershey - Pennsylvania (1568435477), The Milton S. Hershey Medical Center - Hershey - Pennsylvania (1568435477)","The Orthopedic Specialty Hospital - Murray - Utah (1609886126), The Orthopedic Specialty Hospital - Murray - Utah (1609886126)","The University of Michigan - Ann Arbor - MI (1003878539), The University of Michigan - Ann Arbor - MI (1003878539)","Theda Clark Medical Center - Neenah - WI (1407271992), Theda Clark Medical Center - Neenah - WI (1407271992)","Theda Clark Medical Center - Neenah - WI (1518993880), Theda Clark Medical Center - Neenah - WI (1518993880)","Trinitas Regional Medical Center - Elizabeth - NJ (1306981451), Trinitas Regional Medical Center - Elizabeth - NJ (1306981451)","Trinity Hospital of Augusta - Augusta - GA (1083616213), Trinity Hospital of Augusta - Augusta - GA (1083616213)","Tucson Medical Center - Tucson - AZ (1174512792), Tucson Medical Center - Tucson - AZ (1174512792)","Tufts Medical Center - Boston - MA (1487601787), Tufts Medical Center - Boston - MA (1487601787)","UAB  Hospital - Birmingham - Alabama (1154435824), UAB  Hospital - Birmingham - Alabama (1154435824)","UCLA Medical Center - Los Angeles - CA (1447574538), UCLA Medical Center - Los Angeles - CA (1447574538)","UCLA Santa Monica Medical Center - Santa Monica - CA (1427055839), UCLA Santa Monica Medical Center - Santa Monica - CA (1427055839)","UCSF Medical Center - San Francisco - CA (1689772592), UCSF Medical Center - San Francisco - CA (1689772592)","UNC Hospitals - Chapel Hill  - NC (1932208576), UNC Hospitals - Chapel Hill  - NC (1932208576)","Unity Point Methodist Medical Center - Peoria - Illinois (1164474755), Unity Point Methodist Medical Center - Peoria - Illinois (1164474755)","Unity Point Proctor Hospital - Peoria - Illinois (1033116876), Unity Point Proctor Hospital - Peoria - Illinois (1033116876)","University Health Shreveport - Shreveport - Louisiana (1912909912), University Health Shreveport - Shreveport - Louisiana (1912909912)","University Hospital - Augusta - GA (1588665566), University Hospital - Augusta - GA (1588665566)","University Hospitals Ahuja Medical Center - Beachwood - OH (1710214358), University Hospitals Ahuja Medical Center - Beachwood - OH (1710214358)","University Hospitals Case Medical Center - Cleveland - OH (1043397292), University Hospitals Case Medical Center - Cleveland - OH (1043397292)","University Hospitals Regional Hospital - Richmond Heights - Richmond - OH (1669562864), University Hospitals Regional Hospital - Richmond Heights - Richmond - OH (1669562864)","University of Arkansas for Medical Science - Little Rock - AR (147754956), University of Arkansas for Medical Science - Little Rock - AR (147754956)","UNIVERSITY OF CINCINNATI MEDICAL CENTER - CINCINNATI - OH (1033154026), UNIVERSITY OF CINCINNATI MEDICAL CENTER - CINCINNATI - OH (1033154026)","University of Kansas Hospital - Kansas City - KS (1649259656), University of Kansas Hospital - Kansas City - KS (1649259656)","University of Louisville Hospital - Louisville - KY (1023170693), University of Louisville Hospital - Louisville - KY (1023170693)","University of Miami Hospital - Miami - FL (1396946208), University of Miami Hospital - Miami - FL (1396946208)","University of Minnesota Medical Center Fairview - Minneapolis - MN (1013994359), University of Minnesota Medical Center Fairview - Minneapolis - MN (1013994359)","University of New Mexico - Albuquerque - NM (1669614947), University of New Mexico - Albuquerque - NM (1669614947)","University of Utah Hospital - Salt Lake City - UT (1588656870), University of Utah Hospital - Salt Lake City - UT (1588656870)","UT Southwestern Medical Center at Dallas - Dallas - TX (1417010653), UT Southwestern Medical Center at Dallas - Dallas - TX (1417010653)","Utah Valley Hospital - Provo - Utah (1114025491), Utah Valley Hospital - Provo - Utah (1114025491)","UTMC - Knoxville - TN (1538164090), UTMC - Knoxville - TN (1538164090)","UVA Health Sciences Center - Charlottesville - Va (1780630608), UVA Health Sciences Center - Charlottesville - Va (1780630608)","VALLEY HEALTH SURGERY CENTER LLC - Winchester - Virginia (1104349489), VALLEY HEALTH SURGERY CENTER LLC - Winchester - Virginia (1104349489)","Valley Hospital - Ridgewood - NJ (1013912633), Valley Hospital - Ridgewood - NJ (1013912633)","Vanderbilt University Medical Center - Nashville - TN (1396882205), Vanderbilt University Medical Center - Nashville - TN (1396882205)","Vanguard Surgical Center - Maywood - NJ (1023350907), Vanguard Surgical Center - Maywood - NJ (1023350907)","Vasser Brothers Hospital - poughkeepsie - New York (1740233899), Vasser Brothers Hospital - poughkeepsie - New York (1740233899)","VCU Health System - Richmond - VA (1538324009), VCU Health System - Richmond - VA (1538324009)","Wake Forest University Health Sciences - Winston-Salem - NC (1003803032), Wake Forest University Health Sciences - Winston-Salem - NC (1003803032)","Weill Cornell Medical Center - New York - New York (1235388034), Weill Cornell Medical Center - New York - New York (1235388034)","Wellmont Holston Valley Medical Center - Kingsport - TN (1487690400), Wellmont Holston Valley Medical Center - Kingsport - TN (1487690400)","WellStar Cobb Hospital - Austell - GA (1649248626), WellStar Cobb Hospital - Austell - GA (1649248626)","WellStar Kennestone Hospital - Marietta - GA (1467420448), WellStar Kennestone Hospital - Marietta - GA (1467420448)","WEST CHESTER MEDICAL CENTER - WEST CHESTER - OH (1972746485), WEST CHESTER MEDICAL CENTER - WEST CHESTER - OH (1972746485)","West Valley Hospital - Goodyear - AZ (109379112), West Valley Hospital - Goodyear - AZ (109379112)","Westchester Medical Center -  -  (1932280666), Westchester Medical Center -  -  (1932280666)","Westchester Medical Center - Valhalla - NY (1922088186), Westchester Medical Center - Valhalla - NY (1922088186)","White Plains Hospital - white plains - ny (1447255153), White Plains Hospital - white plains - ny (1447255153)","Winchester Medical Center - Winchester - VA  (1619928017), Winchester Medical Center - Winchester - VA  (1619928017)"))
data$qcdr_participant.factor = factor(data$qcdr_participant,levels=c("1","2"))
data$height_units.factor = factor(data$height_units,levels=c("1","2"))
data$weight_units.factor = factor(data$weight_units,levels=c("1","2"))
data$insurance1.factor = factor(data$insurance1,levels=c("1","2","3","4","5"))
data$pt_state.factor = factor(data$pt_state,levels=c("AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"))
data$excluded___1.factor = factor(data$excluded___1,levels=c("0","1"))
data$excluded___2.factor = factor(data$excluded___2,levels=c("0","1"))
data$excluded___3.factor = factor(data$excluded___3,levels=c("0","1"))
data$excluded___5.factor = factor(data$excluded___5,levels=c("0","1"))
data$excluded___6.factor = factor(data$excluded___6,levels=c("0","1"))
data$excluded___7.factor = factor(data$excluded___7,levels=c("0","1"))
data$excluded___9.factor = factor(data$excluded___9,levels=c("0","1"))
data$administrative_exclusions.factor = factor(data$administrative_exclusions,levels=c("1","2","3","4","6","5","7","8"))
data$patient_enrollment_complete.factor = factor(data$patient_enrollment_complete,levels=c("0","1","2"))
data$any_major_surgery_in_the_p.factor = factor(data$any_major_surgery_in_the_p,levels=c("1","0"))
data$major_surgeries___1.factor = factor(data$major_surgeries___1,levels=c("0","1"))
data$major_surgeries___2.factor = factor(data$major_surgeries___2,levels=c("0","1"))
data$major_surgeries___3.factor = factor(data$major_surgeries___3,levels=c("0","1"))
data$major_surgeries___4.factor = factor(data$major_surgeries___4,levels=c("0","1"))
data$smoking_status.factor = factor(data$smoking_status,levels=c("1","2","3","4"))
data$smoking_cessation.factor = factor(data$smoking_cessation,levels=c("1","2","3","4"))
data$diabetes.factor = factor(data$diabetes,levels=c("1","0","9"))
data$cad.factor = factor(data$cad,levels=c("1","0","2"))
data$pvd.factor = factor(data$pvd,levels=c("1","0","2"))
#data$anxiety.factor = factor(data$anxiety,levels=c("1","0","2"))
data$anxiety.factor = factor(data$anxiety,levels=c("1","0"))
#data$depression.factor = factor(data$depression,levels=c("1","0","2"))
data$depression.factor = factor(data$depression,levels=c("1","0"))
data$osteoarthritis.factor = factor(data$osteoarthritis,levels=c("1","0","2"))
data$chronic_renal_dis.factor = factor(data$chronic_renal_dis,levels=c("1","0","2"))
data$copd.factor = factor(data$copd,levels=c("1","0","2"))
data$osteoporosis.factor = factor(data$osteoporosis,levels=c("1","0","2"))
data$parkinsons.factor = factor(data$parkinsons,levels=c("1","0","2"))
data$multiple_sclerosis.factor = factor(data$multiple_sclerosis,levels=c("1","0","2"))
data$pain.factor = factor(data$pain,levels=c("1","0","2"))
data$weakness.factor = factor(data$weakness,levels=c("1","0","2"))
data$numbness.factor = factor(data$numbness,levels=c("1","0","2"))
data$predominant_symptom.factor = factor(data$predominant_symptom,levels=c("1","2","3"))
data$dominant_symptom1.factor = factor(data$dominant_symptom1,levels=c("1","2","3"))
data$motor_def2.factor = factor(data$motor_def2,levels=c("1","0"))
data$ambulation.factor = factor(data$ambulation,levels=c("1","2","3"))
data$neurogenic_claudication.factor = factor(data$neurogenic_claudication,levels=c("1","0"))
#data$symptom_duration2.factor = factor(data$symptom_duration2,levels=c("1","2","3"))
data$symptom_duration2.factor = factor(data$symptom_duration2,levels=c("1","2"))
data$anti_coagulation.factor = factor(data$anti_coagulation,levels=c("1","0","9"))
data$pain_medication.factor = factor(data$pain_medication,levels=c("1","0","9"))
data$pain_meds___1.factor = factor(data$pain_meds___1,levels=c("0","1"))
data$pain_meds___2.factor = factor(data$pain_meds___2,levels=c("0","1"))
data$pain_meds___3.factor = factor(data$pain_meds___3,levels=c("0","1"))
data$pain_meds___4.factor = factor(data$pain_meds___4,levels=c("0","1"))
data$time_on_pain_meds.factor = factor(data$time_on_pain_meds,levels=c("1","2"))
data$dexa_hip.factor = factor(data$dexa_hip,levels=c("1","0","2"))
data$dexa_wrist.factor = factor(data$dexa_wrist,levels=c("1","0","2"))
data$patient_history_complete.factor = factor(data$patient_history_complete,levels=c("0","1","2"))
data$base_interview_admin.factor = factor(data$base_interview_admin,levels=c("1","2"))
data$ptethnicity.factor = factor(data$ptethnicity,levels=c("1","2","3"))



data$prace___1.factor = factor(data$prace___1,levels=c("0","1"))
data$prace___2.factor = factor(data$prace___2,levels=c("0","1"))
data$prace___3.factor = factor(data$prace___3,levels=c("0","1"))
data$prace___4.factor = factor(data$prace___4,levels=c("0","1"))
data$prace___5.factor = factor(data$prace___5,levels=c("0","1"))
data$prace___6.factor = factor(data$prace___6,levels=c("0","1"))
data$prace___7.factor = factor(data$prace___7,levels=c("0","1"))
data$pt_education_level.factor = factor(data$pt_education_level,levels=c("1","2","3","4","5","6"))
data$workers_comp.factor = factor(data$workers_comp,levels=c("1","0","3"))
#data$liability_claim1.factor = factor(data$liability_claim1,levels=c("1","0","3"))
data$liability_claim1.factor = factor(data$liability_claim1,levels=c("1","0"))
data$employment.factor = factor(data$employment,levels=c("1","2","3","4"))
data$full_part_time.factor = factor(data$full_part_time,levels=c("1","2"))
data$unemployed.factor = factor(data$unemployed,levels=c("1","2","3","4"))
data$disability_reason.factor = factor(data$disability_reason,levels=c("1","2"))
data$pre_illness_work2.factor = factor(data$pre_illness_work2,levels=c("1","2","3","4"))
data$plan_return_work.factor = factor(data$plan_return_work,levels=c("1","0","3"))
data$activity_out_home.factor = factor(data$activity_out_home,levels=c("1","0"))
data$activity_desc.factor = factor(data$activity_desc,levels=c("1","2","3"))
data$activity_inside_home.factor = factor(data$activity_inside_home,levels=c("1","0"))
data$activity_desc2.factor = factor(data$activity_desc2,levels=c("1","2","3"))
data$patient_base_int_status.factor = factor(data$patient_base_int_status,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13"))
data$patient_baseline_interview_complete.factor = factor(data$patient_baseline_interview_complete,levels=c("0","1","2"))
data$asa_grade.factor = factor(data$asa_grade,levels=c("1","2","3","4","5"))
data$prophylactic_antibiotics.factor = factor(data$prophylactic_antibiotics,levels=c("1","0"))
data$med_reas_documented.factor = factor(data$med_reas_documented,levels=c("1","0"))
data$antibiotics_stopped.factor = factor(data$antibiotics_stopped,levels=c("1","0"))
data$med_res_not_stopped.factor = factor(data$med_res_not_stopped,levels=c("1","0"))
data$surgical_approach.factor = factor(data$surgical_approach,levels=c("1","2","3","4"))
data$first_stage.factor = factor(data$first_stage,levels=c("1","2","3"))
data$second_stage.factor = factor(data$second_stage,levels=c("1","2","3"))
data$same_or_session.factor = factor(data$same_or_session,levels=c("1","0"))
data$min_invasive_interbody.factor = factor(data$min_invasive_interbody,levels=c("1","0"))
data$laminectomy_performed.factor = factor(data$laminectomy_performed,levels=c("1","0"))
data$laminectomy_level.factor = factor(data$laminectomy_level,levels=c("1","2","3","4","5","6","7"))
data$laminectomy_level_perform___1.factor = factor(data$laminectomy_level_perform___1,levels=c("0","1"))
data$laminectomy_level_perform___2.factor = factor(data$laminectomy_level_perform___2,levels=c("0","1"))
data$laminectomy_level_perform___3.factor = factor(data$laminectomy_level_perform___3,levels=c("0","1"))
data$laminectomy_level_perform___4.factor = factor(data$laminectomy_level_perform___4,levels=c("0","1"))
data$laminectomy_level_perform___5.factor = factor(data$laminectomy_level_perform___5,levels=c("0","1"))
data$laminectomy_level_perform___6.factor = factor(data$laminectomy_level_perform___6,levels=c("0","1"))
data$laminectomy_level_perform___7.factor = factor(data$laminectomy_level_perform___7,levels=c("0","1"))
data$laminectomy_level_perform___8.factor = factor(data$laminectomy_level_perform___8,levels=c("0","1"))
data$laminectomy_level_perform___9.factor = factor(data$laminectomy_level_perform___9,levels=c("0","1"))
data$laminectomy_level_perform___10.factor = factor(data$laminectomy_level_perform___10,levels=c("0","1"))
data$laminectomy_level_perform___11.factor = factor(data$laminectomy_level_perform___11,levels=c("0","1"))
data$laminectomy_level_perform___12.factor = factor(data$laminectomy_level_perform___12,levels=c("0","1"))
data$laminectomy_level_perform___13.factor = factor(data$laminectomy_level_perform___13,levels=c("0","1"))
data$laminectomy_level_perform___14.factor = factor(data$laminectomy_level_perform___14,levels=c("0","1"))
data$laminectomy_level_perform___15.factor = factor(data$laminectomy_level_perform___15,levels=c("0","1"))
data$laminectomy_level_perform___16.factor = factor(data$laminectomy_level_perform___16,levels=c("0","1"))
data$laminectomy_level_perform___17.factor = factor(data$laminectomy_level_perform___17,levels=c("0","1"))
data$laminectomy_level_perform___18.factor = factor(data$laminectomy_level_perform___18,levels=c("0","1"))
data$laminectomy_level_perform___19.factor = factor(data$laminectomy_level_perform___19,levels=c("0","1"))
data$arthrodesis_performed.factor = factor(data$arthrodesis_performed,levels=c("1","0"))
data$arthrodesis_levels.factor = factor(data$arthrodesis_levels,levels=c("1","2","3","4","5","6","7"))
data$arthrodesis_level_perform___1.factor = factor(data$arthrodesis_level_perform___1,levels=c("0","1"))
data$arthrodesis_level_perform___2.factor = factor(data$arthrodesis_level_perform___2,levels=c("0","1"))
data$arthrodesis_level_perform___3.factor = factor(data$arthrodesis_level_perform___3,levels=c("0","1"))
data$arthrodesis_level_perform___4.factor = factor(data$arthrodesis_level_perform___4,levels=c("0","1"))
data$arthrodesis_level_perform___5.factor = factor(data$arthrodesis_level_perform___5,levels=c("0","1"))
data$arthrodesis_level_perform___6.factor = factor(data$arthrodesis_level_perform___6,levels=c("0","1"))
data$arthrodesis_level_perform___7.factor = factor(data$arthrodesis_level_perform___7,levels=c("0","1"))
data$arthrodesis_level_perform___8.factor = factor(data$arthrodesis_level_perform___8,levels=c("0","1"))
data$arthrodesis_level_perform___9.factor = factor(data$arthrodesis_level_perform___9,levels=c("0","1"))
data$arthrodesis_level_perform___10.factor = factor(data$arthrodesis_level_perform___10,levels=c("0","1"))
data$arthrodesis_level_perform___11.factor = factor(data$arthrodesis_level_perform___11,levels=c("0","1"))
data$arthrodesis_level_perform___12.factor = factor(data$arthrodesis_level_perform___12,levels=c("0","1"))
data$arthrodesis_level_perform___13.factor = factor(data$arthrodesis_level_perform___13,levels=c("0","1"))
data$arthrodesis_level_perform___14.factor = factor(data$arthrodesis_level_perform___14,levels=c("0","1"))
data$arthrodesis_level_perform___15.factor = factor(data$arthrodesis_level_perform___15,levels=c("0","1"))
data$arthrodesis_level_perform___16.factor = factor(data$arthrodesis_level_perform___16,levels=c("0","1"))
data$arthrodesis_level_perform___17.factor = factor(data$arthrodesis_level_perform___17,levels=c("0","1"))
data$arthrodesis_level_perform___18.factor = factor(data$arthrodesis_level_perform___18,levels=c("0","1"))
data$arthrodesis_level_perform___19.factor = factor(data$arthrodesis_level_perform___19,levels=c("0","1"))
#data$interbody_graft_1.factor = factor(data$interbody_graft_1,levels=c("1","0","2","3"))
data$interbody_graft_1.factor = factor(data$interbody_graft_1,levels=c("1","0"))
data$interbody_graft1_type.factor = factor(data$interbody_graft1_type,levels=c("1","2","3"))
data$interbody_graft1_struct_type___1.factor = factor(data$interbody_graft1_struct_type___1,levels=c("0","1"))
data$interbody_graft1_struct_type___2.factor = factor(data$interbody_graft1_struct_type___2,levels=c("0","1"))
data$interbody_graft1_struct_type___3.factor = factor(data$interbody_graft1_struct_type___3,levels=c("0","1"))
data$interbody_graft1_struct_type___4.factor = factor(data$interbody_graft1_struct_type___4,levels=c("0","1"))
data$interbody_graft1_struct_type___5.factor = factor(data$interbody_graft1_struct_type___5,levels=c("0","1"))
data$interbody_graft1_biologic_type___1.factor = factor(data$interbody_graft1_biologic_type___1,levels=c("0","1"))
data$interbody_graft1_biologic_type___2.factor = factor(data$interbody_graft1_biologic_type___2,levels=c("0","1"))
data$interbody_graft1_biologic_type___3.factor = factor(data$interbody_graft1_biologic_type___3,levels=c("0","1"))
data$interbody_graft1_biologic_type___4.factor = factor(data$interbody_graft1_biologic_type___4,levels=c("0","1"))
data$interbody_graft1_biologic_type___5.factor = factor(data$interbody_graft1_biologic_type___5,levels=c("0","1"))
data$interbody_graft1_biologic_type___6.factor = factor(data$interbody_graft1_biologic_type___6,levels=c("0","1"))
data$interbody_graft1_biologic_type___7.factor = factor(data$interbody_graft1_biologic_type___7,levels=c("0","1"))
data$corpectomy.factor = factor(data$corpectomy,levels=c("1","0"))
data$corpectomy_levels.factor = factor(data$corpectomy_levels,levels=c("1","2","3","4","5","6","7"))
data$corpectomy_level_perform___1.factor = factor(data$corpectomy_level_perform___1,levels=c("0","1"))
data$corpectomy_level_perform___2.factor = factor(data$corpectomy_level_perform___2,levels=c("0","1"))
data$corpectomy_level_perform___3.factor = factor(data$corpectomy_level_perform___3,levels=c("0","1"))
data$corpectomy_level_perform___4.factor = factor(data$corpectomy_level_perform___4,levels=c("0","1"))
data$corpectomy_level_perform___5.factor = factor(data$corpectomy_level_perform___5,levels=c("0","1"))
data$corpectomy_level_perform___6.factor = factor(data$corpectomy_level_perform___6,levels=c("0","1"))
data$corpectomy_level_perform___7.factor = factor(data$corpectomy_level_perform___7,levels=c("0","1"))
data$corpectomy_level_perform___8.factor = factor(data$corpectomy_level_perform___8,levels=c("0","1"))
data$corpectomy_level_perform___9.factor = factor(data$corpectomy_level_perform___9,levels=c("0","1"))
data$corpectomy_level_perform___10.factor = factor(data$corpectomy_level_perform___10,levels=c("0","1"))
data$corpectomy_level_perform___11.factor = factor(data$corpectomy_level_perform___11,levels=c("0","1"))
data$corpectomy_level_perform___12.factor = factor(data$corpectomy_level_perform___12,levels=c("0","1"))
data$corpectomy_level_perform___13.factor = factor(data$corpectomy_level_perform___13,levels=c("0","1"))
data$corpectomy_level_perform___14.factor = factor(data$corpectomy_level_perform___14,levels=c("0","1"))
data$corpectomy_level_perform___15.factor = factor(data$corpectomy_level_perform___15,levels=c("0","1"))
data$corpectomy_level_perform___16.factor = factor(data$corpectomy_level_perform___16,levels=c("0","1"))
data$corpectomy_level_perform___17.factor = factor(data$corpectomy_level_perform___17,levels=c("0","1"))
data$corpectomy_level_perform___18.factor = factor(data$corpectomy_level_perform___18,levels=c("0","1"))
data$corpectomy_level_perform___19.factor = factor(data$corpectomy_level_perform___19,levels=c("0","1"))
data$osteotomy_performed.factor = factor(data$osteotomy_performed,levels=c("1","0"))
data$ostoe_type_spo.factor = factor(data$ostoe_type_spo,levels=c("1","0","2"))
data$osteotomy_levels_spo___1.factor = factor(data$osteotomy_levels_spo___1,levels=c("0","1"))
data$osteotomy_levels_spo___2.factor = factor(data$osteotomy_levels_spo___2,levels=c("0","1"))
data$osteotomy_levels_spo___3.factor = factor(data$osteotomy_levels_spo___3,levels=c("0","1"))
data$osteotomy_levels_spo___4.factor = factor(data$osteotomy_levels_spo___4,levels=c("0","1"))
data$osteotomy_levels_spo___5.factor = factor(data$osteotomy_levels_spo___5,levels=c("0","1"))
data$osteotomy_levels_spo___6.factor = factor(data$osteotomy_levels_spo___6,levels=c("0","1"))
data$osteotomy_levels_spo___7.factor = factor(data$osteotomy_levels_spo___7,levels=c("0","1"))
data$osteotomy_levels_spo___8.factor = factor(data$osteotomy_levels_spo___8,levels=c("0","1"))
data$osteotomy_levels_spo___9.factor = factor(data$osteotomy_levels_spo___9,levels=c("0","1"))
data$osteotomy_levels_spo___10.factor = factor(data$osteotomy_levels_spo___10,levels=c("0","1"))
data$osteotomy_levels_spo___11.factor = factor(data$osteotomy_levels_spo___11,levels=c("0","1"))
data$osteotomy_levels_spo___12.factor = factor(data$osteotomy_levels_spo___12,levels=c("0","1"))
data$osteotomy_levels_spo___13.factor = factor(data$osteotomy_levels_spo___13,levels=c("0","1"))
data$osteotomy_levels_spo___14.factor = factor(data$osteotomy_levels_spo___14,levels=c("0","1"))
data$osteotomy_levels_spo___15.factor = factor(data$osteotomy_levels_spo___15,levels=c("0","1"))
data$osteotomy_levels_spo___16.factor = factor(data$osteotomy_levels_spo___16,levels=c("0","1"))
data$osteotomy_levels_spo___17.factor = factor(data$osteotomy_levels_spo___17,levels=c("0","1"))
data$osteotomy_levels_spo___19.factor = factor(data$osteotomy_levels_spo___19,levels=c("0","1"))
data$osteotomy_levels_spo___20.factor = factor(data$osteotomy_levels_spo___20,levels=c("0","1"))
data$osteo_type_pso.factor = factor(data$osteo_type_pso,levels=c("1","0","2"))
data$osteotomy_levels_pso___1.factor = factor(data$osteotomy_levels_pso___1,levels=c("0","1"))
data$osteotomy_levels_pso___2.factor = factor(data$osteotomy_levels_pso___2,levels=c("0","1"))
data$osteotomy_levels_pso___3.factor = factor(data$osteotomy_levels_pso___3,levels=c("0","1"))
data$osteotomy_levels_pso___4.factor = factor(data$osteotomy_levels_pso___4,levels=c("0","1"))
data$osteotomy_levels_pso___5.factor = factor(data$osteotomy_levels_pso___5,levels=c("0","1"))
data$osteotomy_levels_pso___6.factor = factor(data$osteotomy_levels_pso___6,levels=c("0","1"))
data$osteotomy_levels_pso___7.factor = factor(data$osteotomy_levels_pso___7,levels=c("0","1"))
data$osteotomy_levels_pso___8.factor = factor(data$osteotomy_levels_pso___8,levels=c("0","1"))
data$osteotomy_levels_pso___9.factor = factor(data$osteotomy_levels_pso___9,levels=c("0","1"))
data$osteotomy_levels_pso___10.factor = factor(data$osteotomy_levels_pso___10,levels=c("0","1"))
data$osteotomy_levels_pso___11.factor = factor(data$osteotomy_levels_pso___11,levels=c("0","1"))
data$osteotomy_levels_pso___12.factor = factor(data$osteotomy_levels_pso___12,levels=c("0","1"))
data$osteotomy_levels_pso___13.factor = factor(data$osteotomy_levels_pso___13,levels=c("0","1"))
data$osteotomy_levels_pso___14.factor = factor(data$osteotomy_levels_pso___14,levels=c("0","1"))
data$osteotomy_levels_pso___15.factor = factor(data$osteotomy_levels_pso___15,levels=c("0","1"))
data$osteotomy_levels_pso___16.factor = factor(data$osteotomy_levels_pso___16,levels=c("0","1"))
data$osteotomy_levels_pso___17.factor = factor(data$osteotomy_levels_pso___17,levels=c("0","1"))
data$osteotomy_levels_pso___19.factor = factor(data$osteotomy_levels_pso___19,levels=c("0","1"))
data$osteotomy_levels_pso___20.factor = factor(data$osteotomy_levels_pso___20,levels=c("0","1"))
data$osteo_type_vcr.factor = factor(data$osteo_type_vcr,levels=c("1","0","2"))
data$osteotomy_levels_vcr___1.factor = factor(data$osteotomy_levels_vcr___1,levels=c("0","1"))
data$osteotomy_levels_vcr___2.factor = factor(data$osteotomy_levels_vcr___2,levels=c("0","1"))
data$osteotomy_levels_vcr___3.factor = factor(data$osteotomy_levels_vcr___3,levels=c("0","1"))
data$osteotomy_levels_vcr___4.factor = factor(data$osteotomy_levels_vcr___4,levels=c("0","1"))
data$osteotomy_levels_vcr___5.factor = factor(data$osteotomy_levels_vcr___5,levels=c("0","1"))
data$osteotomy_levels_vcr___6.factor = factor(data$osteotomy_levels_vcr___6,levels=c("0","1"))
data$osteotomy_levels_vcr___7.factor = factor(data$osteotomy_levels_vcr___7,levels=c("0","1"))
data$osteotomy_levels_vcr___8.factor = factor(data$osteotomy_levels_vcr___8,levels=c("0","1"))
data$osteotomy_levels_vcr___9.factor = factor(data$osteotomy_levels_vcr___9,levels=c("0","1"))
data$osteotomy_levels_vcr___10.factor = factor(data$osteotomy_levels_vcr___10,levels=c("0","1"))
data$osteotomy_levels_vcr___11.factor = factor(data$osteotomy_levels_vcr___11,levels=c("0","1"))
data$osteotomy_levels_vcr___12.factor = factor(data$osteotomy_levels_vcr___12,levels=c("0","1"))
data$osteotomy_levels_vcr___13.factor = factor(data$osteotomy_levels_vcr___13,levels=c("0","1"))
data$osteotomy_levels_vcr___14.factor = factor(data$osteotomy_levels_vcr___14,levels=c("0","1"))
data$osteotomy_levels_vcr___15.factor = factor(data$osteotomy_levels_vcr___15,levels=c("0","1"))
data$osteotomy_levels_vcr___16.factor = factor(data$osteotomy_levels_vcr___16,levels=c("0","1"))
data$osteotomy_levels_vcr___17.factor = factor(data$osteotomy_levels_vcr___17,levels=c("0","1"))
data$osteotomy_levels_vcr___19.factor = factor(data$osteotomy_levels_vcr___19,levels=c("0","1"))
data$osteotomy_levels_vcr___20.factor = factor(data$osteotomy_levels_vcr___20,levels=c("0","1"))
data$interbody1_instrum.factor = factor(data$interbody1_instrum,levels=c("1","0","3"))
data$percutaneuos_interbody.factor = factor(data$percutaneuos_interbody,levels=c("1","0","3"))
data$pedicle_screw1.factor = factor(data$pedicle_screw1,levels=c("1","0","3"))
data$other_instrumentation1.factor = factor(data$other_instrumentation1,levels=c("1","0","3"))
data$min_invasive_interbod2.factor = factor(data$min_invasive_interbod2,levels=c("1","0"))
data$laminectomy_performed2.factor = factor(data$laminectomy_performed2,levels=c("1","0"))
data$laminectomy_level2.factor = factor(data$laminectomy_level2,levels=c("1","2","3","4","5","6","7"))
data$laminectomy_level_perform2___1.factor = factor(data$laminectomy_level_perform2___1,levels=c("0","1"))
data$laminectomy_level_perform2___2.factor = factor(data$laminectomy_level_perform2___2,levels=c("0","1"))
data$laminectomy_level_perform2___3.factor = factor(data$laminectomy_level_perform2___3,levels=c("0","1"))
data$laminectomy_level_perform2___4.factor = factor(data$laminectomy_level_perform2___4,levels=c("0","1"))
data$laminectomy_level_perform2___5.factor = factor(data$laminectomy_level_perform2___5,levels=c("0","1"))
data$laminectomy_level_perform2___6.factor = factor(data$laminectomy_level_perform2___6,levels=c("0","1"))
data$laminectomy_level_perform2___7.factor = factor(data$laminectomy_level_perform2___7,levels=c("0","1"))
data$laminectomy_level_perform2___8.factor = factor(data$laminectomy_level_perform2___8,levels=c("0","1"))
data$laminectomy_level_perform2___9.factor = factor(data$laminectomy_level_perform2___9,levels=c("0","1"))
data$laminectomy_level_perform2___10.factor = factor(data$laminectomy_level_perform2___10,levels=c("0","1"))
data$laminectomy_level_perform2___11.factor = factor(data$laminectomy_level_perform2___11,levels=c("0","1"))
data$laminectomy_level_perform2___12.factor = factor(data$laminectomy_level_perform2___12,levels=c("0","1"))
data$laminectomy_level_perform2___13.factor = factor(data$laminectomy_level_perform2___13,levels=c("0","1"))
data$laminectomy_level_perform2___14.factor = factor(data$laminectomy_level_perform2___14,levels=c("0","1"))
data$laminectomy_level_perform2___15.factor = factor(data$laminectomy_level_perform2___15,levels=c("0","1"))
data$laminectomy_level_perform2___16.factor = factor(data$laminectomy_level_perform2___16,levels=c("0","1"))
data$laminectomy_level_perform2___17.factor = factor(data$laminectomy_level_perform2___17,levels=c("0","1"))
data$laminectomy_level_perform2___19.factor = factor(data$laminectomy_level_perform2___19,levels=c("0","1"))
data$laminectomy_level_perform2___20.factor = factor(data$laminectomy_level_perform2___20,levels=c("0","1"))
data$arthrodesis2_performed.factor = factor(data$arthrodesis2_performed,levels=c("1","0"))
data$arthrodesis2_levels.factor = factor(data$arthrodesis2_levels,levels=c("1","2","3","4","5","6","7"))
data$arthrodesis_level_perform2___1.factor = factor(data$arthrodesis_level_perform2___1,levels=c("0","1"))
data$arthrodesis_level_perform2___2.factor = factor(data$arthrodesis_level_perform2___2,levels=c("0","1"))
data$arthrodesis_level_perform2___3.factor = factor(data$arthrodesis_level_perform2___3,levels=c("0","1"))
data$arthrodesis_level_perform2___4.factor = factor(data$arthrodesis_level_perform2___4,levels=c("0","1"))
data$arthrodesis_level_perform2___5.factor = factor(data$arthrodesis_level_perform2___5,levels=c("0","1"))
data$arthrodesis_level_perform2___6.factor = factor(data$arthrodesis_level_perform2___6,levels=c("0","1"))
data$arthrodesis_level_perform2___7.factor = factor(data$arthrodesis_level_perform2___7,levels=c("0","1"))
data$arthrodesis_level_perform2___8.factor = factor(data$arthrodesis_level_perform2___8,levels=c("0","1"))
data$arthrodesis_level_perform2___9.factor = factor(data$arthrodesis_level_perform2___9,levels=c("0","1"))
data$arthrodesis_level_perform2___10.factor = factor(data$arthrodesis_level_perform2___10,levels=c("0","1"))
data$arthrodesis_level_perform2___11.factor = factor(data$arthrodesis_level_perform2___11,levels=c("0","1"))
data$arthrodesis_level_perform2___12.factor = factor(data$arthrodesis_level_perform2___12,levels=c("0","1"))
data$arthrodesis_level_perform2___13.factor = factor(data$arthrodesis_level_perform2___13,levels=c("0","1"))
data$arthrodesis_level_perform2___14.factor = factor(data$arthrodesis_level_perform2___14,levels=c("0","1"))
data$arthrodesis_level_perform2___15.factor = factor(data$arthrodesis_level_perform2___15,levels=c("0","1"))
data$arthrodesis_level_perform2___16.factor = factor(data$arthrodesis_level_perform2___16,levels=c("0","1"))
data$arthrodesis_level_perform2___17.factor = factor(data$arthrodesis_level_perform2___17,levels=c("0","1"))
data$arthrodesis_level_perform2___19.factor = factor(data$arthrodesis_level_perform2___19,levels=c("0","1"))
data$arthrodesis_level_perform2___20.factor = factor(data$arthrodesis_level_perform2___20,levels=c("0","1"))
data$interbody_graft_2.factor = factor(data$interbody_graft_2,levels=c("1","0"))
data$interbody_graft2_type.factor = factor(data$interbody_graft2_type,levels=c("1","2","3"))
data$interbody_graft2_struct_type___1.factor = factor(data$interbody_graft2_struct_type___1,levels=c("0","1"))
data$interbody_graft2_struct_type___2.factor = factor(data$interbody_graft2_struct_type___2,levels=c("0","1"))
data$interbody_graft2_struct_type___3.factor = factor(data$interbody_graft2_struct_type___3,levels=c("0","1"))
data$interbody_graft2_struct_type___4.factor = factor(data$interbody_graft2_struct_type___4,levels=c("0","1"))
data$interbody_graft2_struct_type___5.factor = factor(data$interbody_graft2_struct_type___5,levels=c("0","1"))
data$interbody_graft2_biol_type___1.factor = factor(data$interbody_graft2_biol_type___1,levels=c("0","1"))
data$interbody_graft2_biol_type___2.factor = factor(data$interbody_graft2_biol_type___2,levels=c("0","1"))
data$interbody_graft2_biol_type___3.factor = factor(data$interbody_graft2_biol_type___3,levels=c("0","1"))
data$interbody_graft2_biol_type___4.factor = factor(data$interbody_graft2_biol_type___4,levels=c("0","1"))
data$interbody_graft2_biol_type___5.factor = factor(data$interbody_graft2_biol_type___5,levels=c("0","1"))
data$interbody_graft2_biol_type___6.factor = factor(data$interbody_graft2_biol_type___6,levels=c("0","1"))
data$interbody_graft2_biol_type___7.factor = factor(data$interbody_graft2_biol_type___7,levels=c("0","1"))
data$corpectomy2_performed.factor = factor(data$corpectomy2_performed,levels=c("1","0"))
data$corpectomy2_levels.factor = factor(data$corpectomy2_levels,levels=c("1","2","3","4","5","6","7"))
data$corpectomy_level_perform2___1.factor = factor(data$corpectomy_level_perform2___1,levels=c("0","1"))
data$corpectomy_level_perform2___2.factor = factor(data$corpectomy_level_perform2___2,levels=c("0","1"))
data$corpectomy_level_perform2___3.factor = factor(data$corpectomy_level_perform2___3,levels=c("0","1"))
data$corpectomy_level_perform2___4.factor = factor(data$corpectomy_level_perform2___4,levels=c("0","1"))
data$corpectomy_level_perform2___5.factor = factor(data$corpectomy_level_perform2___5,levels=c("0","1"))
data$corpectomy_level_perform2___6.factor = factor(data$corpectomy_level_perform2___6,levels=c("0","1"))
data$corpectomy_level_perform2___7.factor = factor(data$corpectomy_level_perform2___7,levels=c("0","1"))
data$corpectomy_level_perform2___8.factor = factor(data$corpectomy_level_perform2___8,levels=c("0","1"))
data$corpectomy_level_perform2___9.factor = factor(data$corpectomy_level_perform2___9,levels=c("0","1"))
data$corpectomy_level_perform2___10.factor = factor(data$corpectomy_level_perform2___10,levels=c("0","1"))
data$corpectomy_level_perform2___11.factor = factor(data$corpectomy_level_perform2___11,levels=c("0","1"))
data$corpectomy_level_perform2___12.factor = factor(data$corpectomy_level_perform2___12,levels=c("0","1"))
data$corpectomy_level_perform2___13.factor = factor(data$corpectomy_level_perform2___13,levels=c("0","1"))
data$corpectomy_level_perform2___14.factor = factor(data$corpectomy_level_perform2___14,levels=c("0","1"))
data$corpectomy_level_perform2___15.factor = factor(data$corpectomy_level_perform2___15,levels=c("0","1"))
data$corpectomy_level_perform2___16.factor = factor(data$corpectomy_level_perform2___16,levels=c("0","1"))
data$corpectomy_level_perform2___17.factor = factor(data$corpectomy_level_perform2___17,levels=c("0","1"))
data$corpectomy_level_perform2___18.factor = factor(data$corpectomy_level_perform2___18,levels=c("0","1"))
data$corpectomy_level_perform2___19.factor = factor(data$corpectomy_level_perform2___19,levels=c("0","1"))
data$osteotomy2_performed.factor = factor(data$osteotomy2_performed,levels=c("1","0"))
data$osteo2_type_spo.factor = factor(data$osteo2_type_spo,levels=c("1","0","2"))
data$osteotomy2_levels_spo___1.factor = factor(data$osteotomy2_levels_spo___1,levels=c("0","1"))
data$osteotomy2_levels_spo___2.factor = factor(data$osteotomy2_levels_spo___2,levels=c("0","1"))
data$osteotomy2_levels_spo___3.factor = factor(data$osteotomy2_levels_spo___3,levels=c("0","1"))
data$osteotomy2_levels_spo___4.factor = factor(data$osteotomy2_levels_spo___4,levels=c("0","1"))
data$osteotomy2_levels_spo___5.factor = factor(data$osteotomy2_levels_spo___5,levels=c("0","1"))
data$osteotomy2_levels_spo___6.factor = factor(data$osteotomy2_levels_spo___6,levels=c("0","1"))
data$osteotomy2_levels_spo___7.factor = factor(data$osteotomy2_levels_spo___7,levels=c("0","1"))
data$osteotomy2_levels_spo___8.factor = factor(data$osteotomy2_levels_spo___8,levels=c("0","1"))
data$osteotomy2_levels_spo___9.factor = factor(data$osteotomy2_levels_spo___9,levels=c("0","1"))
data$osteotomy2_levels_spo___10.factor = factor(data$osteotomy2_levels_spo___10,levels=c("0","1"))
data$osteotomy2_levels_spo___11.factor = factor(data$osteotomy2_levels_spo___11,levels=c("0","1"))
data$osteotomy2_levels_spo___12.factor = factor(data$osteotomy2_levels_spo___12,levels=c("0","1"))
data$osteotomy2_levels_spo___13.factor = factor(data$osteotomy2_levels_spo___13,levels=c("0","1"))
data$osteotomy2_levels_spo___14.factor = factor(data$osteotomy2_levels_spo___14,levels=c("0","1"))
data$osteotomy2_levels_spo___15.factor = factor(data$osteotomy2_levels_spo___15,levels=c("0","1"))
data$osteotomy2_levels_spo___16.factor = factor(data$osteotomy2_levels_spo___16,levels=c("0","1"))
data$osteotomy2_levels_spo___17.factor = factor(data$osteotomy2_levels_spo___17,levels=c("0","1"))
data$osteotomy2_levels_spo___19.factor = factor(data$osteotomy2_levels_spo___19,levels=c("0","1"))
data$osteotomy2_levels_spo___20.factor = factor(data$osteotomy2_levels_spo___20,levels=c("0","1"))
data$osteo2_type_pso.factor = factor(data$osteo2_type_pso,levels=c("1","0","2"))
data$osteotomy2_levels_pso___1.factor = factor(data$osteotomy2_levels_pso___1,levels=c("0","1"))
data$osteotomy2_levels_pso___2.factor = factor(data$osteotomy2_levels_pso___2,levels=c("0","1"))
data$osteotomy2_levels_pso___3.factor = factor(data$osteotomy2_levels_pso___3,levels=c("0","1"))
data$osteotomy2_levels_pso___4.factor = factor(data$osteotomy2_levels_pso___4,levels=c("0","1"))
data$osteotomy2_levels_pso___5.factor = factor(data$osteotomy2_levels_pso___5,levels=c("0","1"))
data$osteotomy2_levels_pso___6.factor = factor(data$osteotomy2_levels_pso___6,levels=c("0","1"))
data$osteotomy2_levels_pso___7.factor = factor(data$osteotomy2_levels_pso___7,levels=c("0","1"))
data$osteotomy2_levels_pso___8.factor = factor(data$osteotomy2_levels_pso___8,levels=c("0","1"))
data$osteotomy2_levels_pso___9.factor = factor(data$osteotomy2_levels_pso___9,levels=c("0","1"))
data$osteotomy2_levels_pso___10.factor = factor(data$osteotomy2_levels_pso___10,levels=c("0","1"))
data$osteotomy2_levels_pso___11.factor = factor(data$osteotomy2_levels_pso___11,levels=c("0","1"))
data$osteotomy2_levels_pso___12.factor = factor(data$osteotomy2_levels_pso___12,levels=c("0","1"))
data$osteotomy2_levels_pso___13.factor = factor(data$osteotomy2_levels_pso___13,levels=c("0","1"))
data$osteotomy2_levels_pso___14.factor = factor(data$osteotomy2_levels_pso___14,levels=c("0","1"))
data$osteotomy2_levels_pso___15.factor = factor(data$osteotomy2_levels_pso___15,levels=c("0","1"))
data$osteotomy2_levels_pso___16.factor = factor(data$osteotomy2_levels_pso___16,levels=c("0","1"))
data$osteotomy2_levels_pso___17.factor = factor(data$osteotomy2_levels_pso___17,levels=c("0","1"))
data$osteotomy2_levels_pso___19.factor = factor(data$osteotomy2_levels_pso___19,levels=c("0","1"))
data$osteotomy2_levels_pso___20.factor = factor(data$osteotomy2_levels_pso___20,levels=c("0","1"))
data$osteo2_type_vcr.factor = factor(data$osteo2_type_vcr,levels=c("1","0","2"))
data$osteotomy2_levels_vcr___1.factor = factor(data$osteotomy2_levels_vcr___1,levels=c("0","1"))
data$osteotomy2_levels_vcr___2.factor = factor(data$osteotomy2_levels_vcr___2,levels=c("0","1"))
data$osteotomy2_levels_vcr___3.factor = factor(data$osteotomy2_levels_vcr___3,levels=c("0","1"))
data$osteotomy2_levels_vcr___4.factor = factor(data$osteotomy2_levels_vcr___4,levels=c("0","1"))
data$osteotomy2_levels_vcr___5.factor = factor(data$osteotomy2_levels_vcr___5,levels=c("0","1"))
data$osteotomy2_levels_vcr___6.factor = factor(data$osteotomy2_levels_vcr___6,levels=c("0","1"))
data$osteotomy2_levels_vcr___7.factor = factor(data$osteotomy2_levels_vcr___7,levels=c("0","1"))
data$osteotomy2_levels_vcr___8.factor = factor(data$osteotomy2_levels_vcr___8,levels=c("0","1"))
data$osteotomy2_levels_vcr___9.factor = factor(data$osteotomy2_levels_vcr___9,levels=c("0","1"))
data$osteotomy2_levels_vcr___10.factor = factor(data$osteotomy2_levels_vcr___10,levels=c("0","1"))
data$osteotomy2_levels_vcr___11.factor = factor(data$osteotomy2_levels_vcr___11,levels=c("0","1"))
data$osteotomy2_levels_vcr___12.factor = factor(data$osteotomy2_levels_vcr___12,levels=c("0","1"))
data$osteotomy2_levels_vcr___13.factor = factor(data$osteotomy2_levels_vcr___13,levels=c("0","1"))
data$osteotomy2_levels_vcr___14.factor = factor(data$osteotomy2_levels_vcr___14,levels=c("0","1"))
data$osteotomy2_levels_vcr___15.factor = factor(data$osteotomy2_levels_vcr___15,levels=c("0","1"))
data$osteotomy2_levels_vcr___16.factor = factor(data$osteotomy2_levels_vcr___16,levels=c("0","1"))
data$osteotomy2_levels_vcr___17.factor = factor(data$osteotomy2_levels_vcr___17,levels=c("0","1"))
data$osteotomy2_levels_vcr___19.factor = factor(data$osteotomy2_levels_vcr___19,levels=c("0","1"))
data$osteotomy2_levels_vcr___20.factor = factor(data$osteotomy2_levels_vcr___20,levels=c("0","1"))
data$interbody2_instrum.factor = factor(data$interbody2_instrum,levels=c("1","0","2","3"))
data$percutaneuos_interbod2.factor = factor(data$percutaneuos_interbod2,levels=c("1","0","3"))
data$pedicle_screw2.factor = factor(data$pedicle_screw2,levels=c("1","0","3"))
data$dynamic_stabilization2.factor = factor(data$dynamic_stabilization2,levels=c("1","0","3"))
data$other_instrumentation2.factor = factor(data$other_instrumentation2,levels=c("1","0","3"))
data$est_blood_loss.factor = factor(data$est_blood_loss,levels=c("1","2","3"))
data$est_blood_loss2.factor = factor(data$est_blood_loss2,levels=c("1","2","3"))
data$surgery_complete.factor = factor(data$surgery_complete,levels=c("0","1","2"))
data$incl_excl_criteria.factor = factor(data$incl_excl_criteria,levels=c("1","0"))
data$diagnosis_chart_abstract.factor = factor(data$diagnosis_chart_abstract,levels=c("1","0"))
data$procedure_chart_abstract.factor = factor(data$procedure_chart_abstract,levels=c("1","0"))
data$exclusion_chart_abstract.factor = factor(data$exclusion_chart_abstract,levels=c("1","0"))
data$type_exclusion.factor = factor(data$type_exclusion,levels=c("1","2","3","4"))
data$excluded_30day___1.factor = factor(data$excluded_30day___1,levels=c("0","1"))
data$excluded_30day___2.factor = factor(data$excluded_30day___2,levels=c("0","1"))
data$excluded_30day___3.factor = factor(data$excluded_30day___3,levels=c("0","1"))
data$excluded_30day___5.factor = factor(data$excluded_30day___5,levels=c("0","1"))
data$excluded_30day___6.factor = factor(data$excluded_30day___6,levels=c("0","1"))
data$excluded_30day___7.factor = factor(data$excluded_30day___7,levels=c("0","1"))
data$excluded_30day___9.factor = factor(data$excluded_30day___9,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___1.factor = factor(data$excl_specific_lumbar_dx_30day___1,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___7.factor = factor(data$excl_specific_lumbar_dx_30day___7,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___3.factor = factor(data$excl_specific_lumbar_dx_30day___3,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___8.factor = factor(data$excl_specific_lumbar_dx_30day___8,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___11.factor = factor(data$excl_specific_lumbar_dx_30day___11,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___12.factor = factor(data$excl_specific_lumbar_dx_30day___12,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___13.factor = factor(data$excl_specific_lumbar_dx_30day___13,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___14.factor = factor(data$excl_specific_lumbar_dx_30day___14,levels=c("0","1"))
data$excl_specific_lumbar_dx_30day___15.factor = factor(data$excl_specific_lumbar_dx_30day___15,levels=c("0","1"))
data$six_cycle_30day_excl.factor = factor(data$six_cycle_30day_excl,levels=c("1"))
data$deformity_exclusion_30day___1.factor = factor(data$deformity_exclusion_30day___1,levels=c("0","1"))
data$deformity_exclusion_30day___2.factor = factor(data$deformity_exclusion_30day___2,levels=c("0","1"))
data$deformity_exclusion_30day___3.factor = factor(data$deformity_exclusion_30day___3,levels=c("0","1"))
data$deformity_exclusion_30day___4.factor = factor(data$deformity_exclusion_30day___4,levels=c("0","1"))
data$deformity_exclusion_30day___5.factor = factor(data$deformity_exclusion_30day___5,levels=c("0","1"))
data$administrative_exclusions_30day.factor = factor(data$administrative_exclusions_30day,levels=c("1","2","3","4","6","5","7"))
data$place_discharged_to.factor = factor(data$place_discharged_to,levels=c("1","2","3","4","5","6","7"))
data$please_specify.factor = factor(data$please_specify,levels=c("1","2","3"))
data$re_admitted_within_30_days.factor = factor(data$re_admitted_within_30_days,levels=c("1","0"))
data$reason_for_readmit_30days___1.factor = factor(data$reason_for_readmit_30days___1,levels=c("0","1"))
data$reason_for_readmit_30days___2.factor = factor(data$reason_for_readmit_30days___2,levels=c("0","1"))
data$reason_for_readmit_30days___3.factor = factor(data$reason_for_readmit_30days___3,levels=c("0","1"))
data$reason_for_readmit_30days___4.factor = factor(data$reason_for_readmit_30days___4,levels=c("0","1"))
data$reason_for_readmit_30days___5.factor = factor(data$reason_for_readmit_30days___5,levels=c("0","1"))
data$reason_for_readmit_30days___6.factor = factor(data$reason_for_readmit_30days___6,levels=c("0","1"))
data$reason_for_readmit_30days___7.factor = factor(data$reason_for_readmit_30days___7,levels=c("0","1"))
data$reason_for_readmit_30days___8.factor = factor(data$reason_for_readmit_30days___8,levels=c("0","1"))
data$reason_for_readmit_30days___11.factor = factor(data$reason_for_readmit_30days___11,levels=c("0","1"))
data$reason_for_readmit_30days___12.factor = factor(data$reason_for_readmit_30days___12,levels=c("0","1"))
data$reason_for_readmit_30days___10.factor = factor(data$reason_for_readmit_30days___10,levels=c("0","1"))
data$readmit_3months.factor = factor(data$readmit_3months,levels=c("1","0"))
data$reason_for_readmit_3mnth___1.factor = factor(data$reason_for_readmit_3mnth___1,levels=c("0","1"))
data$reason_for_readmit_3mnth___2.factor = factor(data$reason_for_readmit_3mnth___2,levels=c("0","1"))
data$reason_for_readmit_3mnth___3.factor = factor(data$reason_for_readmit_3mnth___3,levels=c("0","1"))
data$reason_for_readmit_3mnth___4.factor = factor(data$reason_for_readmit_3mnth___4,levels=c("0","1"))
data$reason_for_readmit_3mnth___5.factor = factor(data$reason_for_readmit_3mnth___5,levels=c("0","1"))
data$reason_for_readmit_3mnth___6.factor = factor(data$reason_for_readmit_3mnth___6,levels=c("0","1"))
data$reason_for_readmit_3mnth___7.factor = factor(data$reason_for_readmit_3mnth___7,levels=c("0","1"))
data$reason_for_readmit_3mnth___8.factor = factor(data$reason_for_readmit_3mnth___8,levels=c("0","1"))
data$reason_for_readmit_3mnth___11.factor = factor(data$reason_for_readmit_3mnth___11,levels=c("0","1"))
data$reason_for_readmit_3mnth___12.factor = factor(data$reason_for_readmit_3mnth___12,levels=c("0","1"))
data$reason_for_readmit_3mnth___13.factor = factor(data$reason_for_readmit_3mnth___13,levels=c("0","1"))
data$reason_for_readmit_3mnth___14.factor = factor(data$reason_for_readmit_3mnth___14,levels=c("0","1"))
data$reason_for_readmit_3mnth___15.factor = factor(data$reason_for_readmit_3mnth___15,levels=c("0","1"))
data$reason_for_readmit_3mnth___16.factor = factor(data$reason_for_readmit_3mnth___16,levels=c("0","1"))
data$reason_for_readmit_3mnth___17.factor = factor(data$reason_for_readmit_3mnth___17,levels=c("0","1"))
data$reason_for_readmit_3mnth___18.factor = factor(data$reason_for_readmit_3mnth___18,levels=c("0","1"))
data$reason_for_readmit_3mnth___19.factor = factor(data$reason_for_readmit_3mnth___19,levels=c("0","1"))
data$reason_for_readmit_3mnth___20.factor = factor(data$reason_for_readmit_3mnth___20,levels=c("0","1"))
data$reason_for_readmit_3mnth___10.factor = factor(data$reason_for_readmit_3mnth___10,levels=c("0","1"))
data$returned_to_or_with_30_day.factor = factor(data$returned_to_or_with_30_day,levels=c("1","0"))
data$reason_for_return_to_or___1.factor = factor(data$reason_for_return_to_or___1,levels=c("0","1"))
data$reason_for_return_to_or___2.factor = factor(data$reason_for_return_to_or___2,levels=c("0","1"))
data$reason_for_return_to_or___3.factor = factor(data$reason_for_return_to_or___3,levels=c("0","1"))
data$reason_for_return_to_or___4.factor = factor(data$reason_for_return_to_or___4,levels=c("0","1"))
data$reason_for_return_to_or___5.factor = factor(data$reason_for_return_to_or___5,levels=c("0","1"))
data$reason_for_return_to_or___6.factor = factor(data$reason_for_return_to_or___6,levels=c("0","1"))
data$reason_for_return_to_or___7.factor = factor(data$reason_for_return_to_or___7,levels=c("0","1"))
data$reason_for_return_to_or___8.factor = factor(data$reason_for_return_to_or___8,levels=c("0","1"))
data$reason_for_return_to_or___11.factor = factor(data$reason_for_return_to_or___11,levels=c("0","1"))
data$reason_for_return_to_or___12.factor = factor(data$reason_for_return_to_or___12,levels=c("0","1"))
data$reason_for_return_to_or___10.factor = factor(data$reason_for_return_to_or___10,levels=c("0","1"))
data$patient_died_within_30_day.factor = factor(data$patient_died_within_30_day,levels=c("1","0"))
data$dvt_30day.factor = factor(data$dvt_30day,levels=c("1","0"))
data$dvt_timing.factor = factor(data$dvt_timing,levels=c("1","2","3"))
data$pulmonary_embolism_30day.factor = factor(data$pulmonary_embolism_30day,levels=c("1","0"))
data$pe_timing.factor = factor(data$pe_timing,levels=c("1","2","3"))
data$new_neuro_deficit.factor = factor(data$new_neuro_deficit,levels=c("1","0"))
data$new_neuro_def_timing.factor = factor(data$new_neuro_def_timing,levels=c("1","2","3"))
data$mi_30day.factor = factor(data$mi_30day,levels=c("1","0"))
data$mi_timing.factor = factor(data$mi_timing,levels=c("1","2","3"))
data$uti_30days.factor = factor(data$uti_30days,levels=c("1","0"))
data$uti_timimg.factor = factor(data$uti_timimg,levels=c("1","2","3"))
data$surgical_site_infect_30day.factor = factor(data$surgical_site_infect_30day,levels=c("1","0"))
data$ssi_timing.factor = factor(data$ssi_timing,levels=c("1","2","3"))
data$tx_ssi.factor = factor(data$tx_ssi,levels=c("1","2"))
data$hematoma.factor = factor(data$hematoma,levels=c("1","0"))
data$hematoma_timing.factor = factor(data$hematoma_timing,levels=c("1","2","3"))
data$tx_hematoma.factor = factor(data$tx_hematoma,levels=c("1","2"))
data$cva.factor = factor(data$cva,levels=c("1","0"))
data$cva_timing.factor = factor(data$cva_timing,levels=c("1","2","3"))
data$incidental_durotomy.factor = factor(data$incidental_durotomy,levels=c("1","0"))
data$inc_durotomy_def_timing.factor = factor(data$inc_durotomy_def_timing,levels=c("1","3"))
data$pneumonia.factor = factor(data$pneumonia,levels=c("1","0"))
data$pneumonia_timing.factor = factor(data$pneumonia_timing,levels=c("1","2","3"))
data$thirty_day_morbidity_complete.factor = factor(data$thirty_day_morbidity_complete,levels=c("0","1","2"))
data$event.factor = factor(data$event,levels=c("1","2","3","4","5","6"))
data$interview_admin.factor = factor(data$interview_admin,levels=c("1","2"))
data$pt_satisfaction_index.factor = factor(data$pt_satisfaction_index,levels=c("1","2","3","4"))
#data$return_to_work.factor = factor(data$return_to_work,levels=c("1","0","2"))
data$return_to_work.factor = factor(data$return_to_work,levels=c("1","0"))
data$part_time_or_full_time.factor = factor(data$part_time_or_full_time,levels=c("1","2"))
data$return_to_activities.factor = factor(data$return_to_activities,levels=c("1","0"))
data$readmit_3mth_surg.factor = factor(data$readmit_3mth_surg,levels=c("1","0"))
data$reason_readmit_3mnth___1.factor = factor(data$reason_readmit_3mnth___1,levels=c("0","1"))
data$reason_readmit_3mnth___2.factor = factor(data$reason_readmit_3mnth___2,levels=c("0","1"))
data$reason_readmit_3mnth___3.factor = factor(data$reason_readmit_3mnth___3,levels=c("0","1"))
data$reason_readmit_3mnth___4.factor = factor(data$reason_readmit_3mnth___4,levels=c("0","1"))
data$reason_readmit_3mnth___5.factor = factor(data$reason_readmit_3mnth___5,levels=c("0","1"))
data$reason_readmit_3mnth___6.factor = factor(data$reason_readmit_3mnth___6,levels=c("0","1"))
data$reason_readmit_3mnth___7.factor = factor(data$reason_readmit_3mnth___7,levels=c("0","1"))
data$reason_readmit_3mnth___8.factor = factor(data$reason_readmit_3mnth___8,levels=c("0","1"))
data$reason_readmit_3mnth___11.factor = factor(data$reason_readmit_3mnth___11,levels=c("0","1"))
data$reason_readmit_3mnth___14.factor = factor(data$reason_readmit_3mnth___14,levels=c("0","1"))
data$reason_readmit_3mnth___16.factor = factor(data$reason_readmit_3mnth___16,levels=c("0","1"))
data$reason_readmit_3mnth___17.factor = factor(data$reason_readmit_3mnth___17,levels=c("0","1"))
data$reason_readmit_3mnth___9.factor = factor(data$reason_readmit_3mnth___9,levels=c("0","1"))
data$reason_readmit_3mnth___10.factor = factor(data$reason_readmit_3mnth___10,levels=c("0","1"))
data$revision_surg_3mths.factor = factor(data$revision_surg_3mths,levels=c("1","0"))
data$revision_surg_12mths.factor = factor(data$revision_surg_12mths,levels=c("1","0"))
data$revision_surg_12mths2.factor = factor(data$revision_surg_12mths2,levels=c("1","0"))
data$revision_surg_24mths.factor = factor(data$revision_surg_24mths,levels=c("1","0"))
data$reasonrevision___1.factor = factor(data$reasonrevision___1,levels=c("0","1"))
data$reasonrevision___2.factor = factor(data$reasonrevision___2,levels=c("0","1"))
data$reasonrevision___3.factor = factor(data$reasonrevision___3,levels=c("0","1"))
data$reasonrevision___4.factor = factor(data$reasonrevision___4,levels=c("0","1"))
data$reasonrevision___5.factor = factor(data$reasonrevision___5,levels=c("0","1"))
data$reasonrevision___6.factor = factor(data$reasonrevision___6,levels=c("0","1"))
data$reasonrevision___7.factor = factor(data$reasonrevision___7,levels=c("0","1"))
data$same_level_fusion.factor = factor(data$same_level_fusion,levels=c("1","2"))
data$rx_physical_therapy.factor = factor(data$rx_physical_therapy,levels=c("1","0","2"))
data$receive_phys_therapy.factor = factor(data$receive_phys_therapy,levels=c("1","0","2"))
data$patient_interview_status.factor = factor(data$patient_interview_status,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14"))
data$admin_reconcile.factor = factor(data$admin_reconcile,levels=c("1","2","3","4"))
data$patient_interview_complete.factor = factor(data$patient_interview_complete,levels=c("0","1","2"))
data$vas_administration.factor = factor(data$vas_administration,levels=c("1","2"))
data$pt_int_pain_meds.factor = factor(data$pt_int_pain_meds,levels=c("1","0"))
data$back_pain_meds.factor = factor(data$back_pain_meds,levels=c("1","0"))
data$narc_opiod_med.factor = factor(data$narc_opiod_med,levels=c("1","0","2"))
data$time_on_pain_med.factor = factor(data$time_on_pain_med,levels=c("1","2"))
data$back_pain_vas.factor = factor(data$back_pain_vas,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$leg_pain_vas1.factor = factor(data$leg_pain_vas1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$back_pain_same_problem.factor = factor(data$back_pain_same_problem,levels=c("1","0"))
data$back_pain_same_location.factor = factor(data$back_pain_same_location,levels=c("1","2","3"))
data$back_pain_reason.factor = factor(data$back_pain_reason,levels=c("1","2","3"))
data$leg_pain_same_problem.factor = factor(data$leg_pain_same_problem,levels=c("1","0"))
data$leg_pain_reason.factor = factor(data$leg_pain_reason,levels=c("1","2","3"))
data$odi_administration.factor = factor(data$odi_administration,levels=c("1","2"))
data$for_lang_qol.factor = factor(data$for_lang_qol,levels=c("0","1","2"))
data$odi_score_pain_intensity_int.factor = factor(data$odi_score_pain_intensity_int,levels=c("0","1","2","3","4","5"))
data$odi_score_personal_care_int.factor = factor(data$odi_score_personal_care_int,levels=c("0","1","2","3","4","5"))
data$odi_score_lifting_int.factor = factor(data$odi_score_lifting_int,levels=c("0","1","2","3","4","5"))
data$odi_score_walking_int.factor = factor(data$odi_score_walking_int,levels=c("0","1","2","3","4","5"))
data$odi_score_sitting_int.factor = factor(data$odi_score_sitting_int,levels=c("0","1","2","3","4","5"))
data$odi_score_standing_int.factor = factor(data$odi_score_standing_int,levels=c("0","1","2","3","4","5"))
data$odi_score_sleeping_int.factor = factor(data$odi_score_sleeping_int,levels=c("0","1","2","3","4","5"))
data$odi_score_sex_life_int.factor = factor(data$odi_score_sex_life_int,levels=c("0","1","2","3","4","5"))
data$odi_score_social_life_int.factor = factor(data$odi_score_social_life_int,levels=c("0","1","2","3","4","5"))
data$odi_score_travelling_int.factor = factor(data$odi_score_travelling_int,levels=c("0","1","2","3","4","5"))
data$odi_pain_intensity_self.factor = factor(data$odi_pain_intensity_self,levels=c("0","1","2","3","4","5"))
data$odi_personal_care_self.factor = factor(data$odi_personal_care_self,levels=c("0","1","2","3","4","5"))
data$odi_lifting_self.factor = factor(data$odi_lifting_self,levels=c("0","1","2","3","4","5"))
data$odi_walking_self.factor = factor(data$odi_walking_self,levels=c("0","1","2","3","4","5"))
data$odi_sitting_self.factor = factor(data$odi_sitting_self,levels=c("0","1","2","3","4","5"))
data$odi_standing_self.factor = factor(data$odi_standing_self,levels=c("0","1","2","3","4","5"))
data$odi_sleeping_self.factor = factor(data$odi_sleeping_self,levels=c("0","1","2","3","4","5"))
data$odi_sex_life_self.factor = factor(data$odi_sex_life_self,levels=c("0","1","2","3","4","5"))
data$odi_social_life_self.factor = factor(data$odi_social_life_self,levels=c("0","1","2","3","4","5"))
data$odi_travelling_self.factor = factor(data$odi_travelling_self,levels=c("0","1","2","3","4","5"))
data$eq_5d_administration.factor = factor(data$eq_5d_administration,levels=c("1","2"))
data$for_lang_eq5d.factor = factor(data$for_lang_eq5d,levels=c("0","1","2"))
data$mobility_int.factor = factor(data$mobility_int,levels=c("1","2","3"))
data$self_care_int.factor = factor(data$self_care_int,levels=c("1","2","3"))
data$usual_activities_int.factor = factor(data$usual_activities_int,levels=c("1","2","3"))
data$pain_discomfort_int.factor = factor(data$pain_discomfort_int,levels=c("1","2","3"))
data$anxiety_depression_int.factor = factor(data$anxiety_depression_int,levels=c("1","2","3"))
data$mobility_self_admin.factor = factor(data$mobility_self_admin,levels=c("1","2","3"))
data$self_care_self_admin.factor = factor(data$self_care_self_admin,levels=c("1","2","3"))
data$usual_activities_self_admin.factor = factor(data$usual_activities_self_admin,levels=c("1","2","3"))
data$pain_self_admin_discomfort.factor = factor(data$pain_self_admin_discomfort,levels=c("1","2","3"))
data$anxiety_self_admin_depression.factor = factor(data$anxiety_self_admin_depression,levels=c("1","2","3"))
data$questionnaires_complete.factor = factor(data$questionnaires_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Baseline","3-month","12-month","24-month","36-month","48-month","60-month")
levels(data$pgender.factor)=c("Male","Female","Unknown")
levels(data$lumbar_deformity.factor)=c("Lumbar","Deformity")
levels(data$excl_specific_lumbar_dx___1.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx___2.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx___4.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx___6.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx___11.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx___12.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx___13.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx___14.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx___15.factor)=c("Unchecked","Checked")
levels(data$six_cycle_exclusion.factor)=c("6-cycle accrual site")
levels(data$deformity_exclusion___1.factor)=c("Unchecked","Checked")
levels(data$deformity_exclusion___2.factor)=c("Unchecked","Checked")
levels(data$deformity_exclusion___3.factor)=c("Unchecked","Checked")
levels(data$deformity_exclusion___4.factor)=c("Unchecked","Checked")
levels(data$deformity_exclusion___5.factor)=c("Unchecked","Checked")
levels(data$primary_revision.factor)=c("Primary","Revision")
levels(data$principal_spine_diagnosis___3.factor)=c("Unchecked","Checked")
levels(data$principal_spine_diagnosis___1.factor)=c("Unchecked","Checked")
levels(data$principal_spine_diagnosis___4.factor)=c("Unchecked","Checked")
levels(data$principal_spine_diagnosis___5.factor)=c("Unchecked","Checked")
levels(data$principal_spine_diagnosis___6.factor)=c("Unchecked","Checked")
levels(data$principal_spine_diagnosis___9.factor)=c("Unchecked","Checked")
levels(data$deformity_dx___1.factor)=c("Unchecked","Checked")
levels(data$deformity_dx___2.factor)=c("Unchecked","Checked")
levels(data$deformity_dx___3.factor)=c("Unchecked","Checked")
levels(data$deformity_dx___4.factor)=c("Unchecked","Checked")
levels(data$deformity_dx___5.factor)=c("Unchecked","Checked")
levels(data$deformity_dx___7.factor)=c("Unchecked","Checked")
levels(data$deformity_dx___9.factor)=c("Unchecked","Checked")
levels(data$grade_listhesis.factor)=c("Grade 1","Grade 2","Grade 3","Grade 4","Grade 5","Dont know, not documented")
levels(data$degree_scoliosis.factor)=c("Mild (< 20 degrees)","Moderate (20-40 degrees)","Severe (> 40 degrees)")
levels(data$type_stenosis___1.factor)=c("Unchecked","Checked")
levels(data$type_stenosis___2.factor)=c("Unchecked","Checked")
levels(data$type_stenosis___3.factor)=c("Unchecked","Checked")
levels(data$central_canal_compress.factor)=c("Yes","No","Information not available")
levels(data$lateral_recess.factor)=c("Yes","No","Information not available")
levels(data$discectomy_op_level.factor)=c("Yes","No")
levels(data$disc_ht_loss.factor)=c("Mild, moderate, less than or equal to 50%","Severe, greater than 50%","Unknown (not given)")
levels(data$coronal_shift.factor)=c("Yes","No","Information not available")
levels(data$sagittal_vertical_axis.factor)=c("Yes","No","Information not available")
levels(data$failure_brace_req_op.factor)=c("Yes","No","Information not available")
levels(data$surgeon.factor)=c("(1477675890), (1477675890)","Aaronson Oran (1356445712), Aaronson Oran (1356445712)","Abd-El-Barr Muhammad (1891922688), Abd-El-Barr Muhammad (1891922688)","Abdulhak Muwaffak (1104089499), Abdulhak Muwaffak (1104089499)","Abel Todd (1518946615), Abel Todd (1518946615)","Abrahams John (1720049596), Abrahams John (1720049596)","Abramson Robert (1871545590), Abramson Robert (1871545590)","Adamson Tim (1326046236), Adamson Tim (1326046236)","Agarwal Akash (1073622346), Agarwal Akash (1073622346)","Aggarwal Sanjeev (1679502066), Aggarwal Sanjeev (1679502066)","Ahmed Hazem (152827557), Ahmed Hazem (152827557)","Air Ellen (1881805174), Air Ellen (1881805174)","Akhtar Naveed (1598769036), Akhtar Naveed (1598769036)","Akin Eric (1447220264), Akin Eric (1447220264)","Al Tamimi Mazin (1033169982), Al Tamimi Mazin (1033169982)","Alberts Mark (1992795140), Alberts Mark (1992795140)","Aleem Ilyas (1639558323), Aleem Ilyas (1639558323)","Alexander Peter (1972573962), Alexander Peter (1972573962)","Alexander Joseph (1457331035), Alexander Joseph (1457331035)","Allen Keith (1609804855), Allen Keith (1609804855)","Altschul Dorothea (1740323138), Altschul Dorothea (1740323138)","Altstadt Thomas (1831366392), Altstadt Thomas (1831366392)","Amene Chiazo (1245435056), Amene Chiazo (1245435056)","Ames Chris (1265485155), Ames Chris (1265485155)","Amin Devin (1881649036), Amin Devin (1881649036)","Andrade Nicholas (1497919310), Andrade Nicholas (1497919310)","Angevine Peter (1255384236), Angevine Peter (1255384236)","Anson  Philip  (1508892399), Anson  Philip  (1508892399)","ARAND ARTHUR (1386652584), ARAND ARTHUR (1386652584)","Arnautovic Kenan (1134118789), Arnautovic Kenan (1134118789)","Arnold Paul (1851486559), Arnold Paul (1851486559)","ARORA TARUN (1538308275), ARORA TARUN (1538308275)","Arthur Adam (1982693313), Arthur Adam (1982693313)","Asher Anthony (1003814914), Asher Anthony (1003814914)","Atkinson John (1740250752), Atkinson John (1740250752)","Auschwitz Tyler (1003050493), Auschwitz Tyler (1003050493)","Aymond James (1316972615), Aymond James (1316972615)","Aziz Khaled (1316961949), Aziz Khaled (1316961949)","Azmi Hooman (1245389931), Azmi Hooman (1245389931)","Baaj Ali (1417148800), Baaj Ali (1417148800)","Bachison Casey (1235349820), Bachison Casey (1235349820)","Bacon C. (1962505750), Bacon C. (1962505750)","Baek Paul (1801831292), Baek Paul (1801831292)","Baghai Parvis (1770576662), Baghai Parvis (1770576662)","Bagley Carlos (1801939947), Bagley Carlos (1801939947)","Bagley_old Carlos (1801939947), Bagley_old Carlos (1801939947)","Bailey Byron (1508804857), Bailey Byron (1508804857)","BAILEY STEVEN (1417065038), BAILEY STEVEN (1417065038)","Baird Clinton (1972656908), Baird Clinton (1972656908)","Baker Christopher (1760432090), Baker Christopher (1760432090)","Ball Perry (1144322371), Ball Perry (1144322371)","Balturshot Gregory (1043216724), Balturshot Gregory (1043216724)","Bambakidis Nicholas (1508851106), Bambakidis Nicholas (1508851106)","Bangerter Kurt (1215948799), Bangerter Kurt (1215948799)","Barnett H (1518062462), Barnett H (1518062462)","Barr John (1679523260), Barr John (1679523260)","Barr John (1518178318), Barr John (1518178318)","Barranco Frank (1134115884), Barranco Frank (1134115884)","Barth Green (1730106204), Barth Green (1730106204)","Barth  Konrad (1558307330), Barth  Konrad (1558307330)","Baskin Jonathan (1639136757), Baskin Jonathan (1639136757)","Basta Peter (1699703785), Basta Peter (1699703785)","Bate Berkeley (1891969713), Bate Berkeley (1891969713)","Batjer Henry (1518931104), Batjer Henry (1518931104)","Batzdorf Ulrich (1801811047), Batzdorf Ulrich (1801811047)","Bay Janet (1831183201), Bay Janet (1831183201)","Beard Douglas (1669456497), Beard Douglas (1669456497)","Beaty Narlin (1184859530), Beaty Narlin (1184859530)","Becker Gerald (1013914332), Becker Gerald (1013914332)","Bederson Joshua (1821064569), Bederson Joshua (1821064569)","Behrmann Donald (1841249711), Behrmann Donald (1841249711)","Bellew Michael (1306856828), Bellew Michael (1306856828)","Benedict William (1285778613), Benedict William (1285778613)","Benglis David (1669675641), Benglis David (1669675641)","Benitez Ronald  (1730146820), Benitez Ronald  (1730146820)","Benz Robert (1972595247), Benz Robert (1972595247)","Berenstein Alejandro  (1790766848), Berenstein Alejandro  (1790766848)","Berkman Richard (1699756825), Berkman Richard (1699756825)","Bernard Joe (1851399687), Bernard Joe (1851399687)","Berry Robert (1982673505), Berry Robert (1982673505)","Beyerl Brian (1104883297), Beyerl Brian (1104883297)","Bhalla Tarun (1346412731), Bhalla Tarun (1346412731)","Bhattacharjee Sumon (1740221910), Bhattacharjee Sumon (1740221910)","Bhatti Sana (1366444275), Bhatti Sana (1366444275)","Bhowmick Deb (1275696650), Bhowmick Deb (1275696650)","Bible Jesse (1710120282), Bible Jesse (1710120282)","Biggs William (1265496715), Biggs William (1265496715)","Binette Michael (1386643476), Binette Michael (1386643476)","Birkedal John (1720062128), Birkedal John (1720062128)","Bisson Erica (1750409520), Bisson Erica (1750409520)","Biswas Arundhati (1326297565), Biswas Arundhati (1326297565)","Blatt Geoffrey (1134191745), Blatt Geoffrey (1134191745)","Blatter Duane (1316949316), Blatter Duane (1316949316)","Boakye Maxwell (1023030913), Boakye Maxwell (1023030913)","Bodemer William (1497705370), Bodemer William (1497705370)","BOHINSKI ROBERT (1306876172), BOHINSKI ROBERT (1306876172)","Bohnstedt Bradley (1952568271), Bohnstedt Bradley (1952568271)","Boling Warren (1912007790), Boling Warren (1912007790)","Bolinger Bryan (1609149871), Bolinger Bryan (1609149871)","Bonaroti Eugene (1528068608), Bonaroti Eugene (1528068608)","Bond Aaron (1104115385), Bond Aaron (1104115385)","Boockvar John (1881651545), Boockvar John (1881651545), Boockvar John (1881651545)","Boop Frederick  (1841280344), Boop Frederick  (1841280344)","Borkon A (1336190602), Borkon A (1336190602)","Botero Ernesto (1275524605), Botero Ernesto (1275524605)","Boulos Alan (1821090747), Boulos Alan (1821090747)","BOWLES ALFRED (1831183052), BOWLES ALFRED (1831183052)","Boyer Richard (1902885098), Boyer Richard (1902885098)","Bradbury Jamie (1861659450), Bradbury Jamie (1861659450)","Branch Charles (1821078403), Branch Charles (1821078403)","Branch Byron (1801039052), Branch Byron (1801039052)","Brightman Rebecca (1891789236), Brightman Rebecca (1891789236)","Broaddus William (1033140694), Broaddus William (1033140694)","Brophy John  (1013930296), Brophy John  (1013930296)","Brown Michael (1003818790), Brown Michael (1003818790)","Buckingham Martin (1043275654), Buckingham Martin (1043275654)","Bumpass David (1265688733), Bumpass David (1265688733)","Bunch Joshua (1932495769), Bunch Joshua (1932495769)","Burke Lauren (1922261346), Burke Lauren (1922261346)","Burt James (1619983962), Burt James (1619983962)","Burton Douglas (1194834168), Burton Douglas (1194834168)","Bydon Ali (1679522080), Bydon Ali (1679522080)","Bydon Mohamad (1871766022), Bydon Mohamad (1871766022)","Cabbell Kyle (1598756934), Cabbell Kyle (1598756934)","Cahill Kevin (1811157613), Cahill Kevin (1811157613)","Calderon Stephen (1699716183), Calderon Stephen (1699716183)","Callahan James (1750311098), Callahan James (1750311098)","Callahan Brian (1982750576), Callahan Brian (1982750576)","Camarata Paul (1558398982), Camarata Paul (1558398982)","Cameron Brian (1235346354), Cameron Brian (1235346354)","Campbell Mitchell (1174586457), Campbell Mitchell (1174586457)","Campos-Benitez Mauricio (1700028180), Campos-Benitez Mauricio (1700028180)","Cantando John (1780795435), Cantando John (1780795435)","Capicotto William (1356484174), Capicotto William (1356484174)","Cardenas Raul (1619187697), Cardenas Raul (1619187697)","Carlson Andrew (1811036825), Carlson Andrew (1811036825)","Carlson Brandon (1710249743), Carlson Brandon (1710249743)","Carson Larry (1588764385), Carson Larry (1588764385)","Castiglia Gregory (1003891896), Castiglia Gregory (1003891896)","Ceola Wade (1669429049), Ceola Wade (1669429049)","Chabot Joseph (1033421623), Chabot Joseph (1033421623)","Chadduck James (1952381741), Chadduck James (1952381741)","Chambers Melissa (1871536565), Chambers Melissa (1871536565)","Chang Steve (1154501294), Chang Steve (1154501294)","Chang Victor (1487855185), Chang Victor (1487855185)","Chapple Kyle (1295961555), Chapple Kyle (1295961555)","Chedid Mokbel (1225103963), Chedid Mokbel (1225103963)","Cheng Joseph (1073697173), Cheng Joseph (1073697173)","Cheng Jennifer (1942474929), Cheng Jennifer (1942474929)","Chewning Samuel (1255323044), Chewning Samuel (1255323044)","Chilton Jonathan (1073585337), Chilton Jonathan (1073585337)","Chitale Vidyadhar (1841350956), Chitale Vidyadhar (1841350956)","Chohan Muhammad (1427220128), Chohan Muhammad (1427220128)","Chou Dean (1023066834), Chou Dean (1023066834)","Choudhri Tanvir (1043286727), Choudhri Tanvir (1043286727)","Chozick Bruce (1386686897), Chozick Bruce (1386686897)","Christiano Lana (1467615344), Christiano Lana (1467615344)","Chun Jay (1548227663), Chun Jay (1548227663)","Clark Aaron (1518295815), Clark Aaron (1518295815)","Clark Lindsey (1003147323), Clark Lindsey (1003147323)","Clarke Michelle (1437136355), Clarke Michelle (1437136355)","Clawson Junius (1427018761), Clawson Junius (1427018761)","Cobb William (1972755254), Cobb William (1972755254), Cobb William (1972755254)","Cochran Daniel (1528195252), Cochran Daniel (1528195252)","Coester Hans (1043256613), Coester Hans (1043256613)","Coger Brenton (1427107283), Coger Brenton (1427107283)","Cohen-Gadol Aaron (1215962279), Cohen-Gadol Aaron (1215962279)","Collins John (1588764369), Collins John (1588764369)","Conger Andrew (1821239898), Conger Andrew (1821239898)","Connolly E. (1447386578), Connolly E. (1447386578)","Cook Steven (1194015370), Cook Steven (1194015370)","Coric Domagoj (1265430029), Coric Domagoj (1265430029)","Corradino Gregory  (1376504332), Corradino Gregory  (1376504332)","Cote Ian (1457762221), Cote Ian (1457762221), Cote Ian (1457762221)","Couture Daniel (1124210950), Couture Daniel (1124210950)","Covington Christopher (1235190943), Covington Christopher (1235190943)","Cowan Michael (1326046186), Cowan Michael (1326046186)","Cox Joseph (1013117688), Cox Joseph (1013117688)","Cozzens Jeffrey (1750301875), Cozzens Jeffrey (1750301875)","Crabtree Herbert (1659325785), Crabtree Herbert (1659325785)","Cram Gary (1013900216), Cram Gary (1013900216)","Crawford Charles (1265570808), Crawford Charles (1265570808)","Crecelius Jeffrey (1477521573), Crecelius Jeffrey (1477521573)","Cress Marshall (1699971945), Cress Marshall (1699971945)","Crow Robert (1023072139), Crow Robert (1023072139)","Crowley Richard (Webster) (1972710101), Crowley Richard (Webster) (1972710101)","Cuddy Brian (1629037924), Cuddy Brian (1629037924)","Cuffe Mark (1255308151), Cuffe Mark (1255308151)","Cunningham Edwin (1578510954), Cunningham Edwin (1578510954)","Cunningham David (1255320677), Cunningham David (1255320677)","CURT BRADFORD (1003027392), CURT BRADFORD (1003027392)","DAmbrosio Anthony (1356463079), DAmbrosio Anthony (1356463079)","DAngelo William  (1174567986), DAngelo William  (1174567986)","Daftari Tapan (1649267329), Daftari Tapan (1649267329)","Dailey Andrew (1881706596), Dailey Andrew (1881706596)","Dakwar Elias (1801095609), Dakwar Elias (1801095609)","Dal Canto Richard (1114978533), Dal Canto Richard (1114978533)","Dalal shamsher (1194879338), Dalal shamsher (1194879338)","Dalfino John (1245490283), Dalfino John (1245490283)","Darkhabani Ziad (1871815225), Darkhabani Ziad (1871815225)","Das Kaushik (1205821147), Das Kaushik (1205821147)","Daugherty Wilson (1023094950), Daugherty Wilson (1023094950)","Davis John  (1891775920), Davis John  (1891775920)","Davis Steven (1467471284), Davis Steven (1467471284)","De Leacy Reade (1982045845), De Leacy Reade (1982045845)","de Lotbiniere Alain (1588645485), de Lotbiniere Alain (1588645485)","DeCuypere Michael (1922329986), DeCuypere Michael (1922329986)","Delashaw Johnny (1831107309), Delashaw Johnny (1831107309)","DeNardo Andrew (1437154028), DeNardo Andrew (1437154028)","DenHaese Ryan (1356563381), DenHaese Ryan (1356563381)","DePowell John (1467663757), DePowell John (1467663757)","Desai Rajiv (1881637833), Desai Rajiv (1881637833)","Deshmukh Vinay (1144228933), Deshmukh Vinay (1144228933)","Detwiler Paul (1447253356), Detwiler Paul (1447253356)","Devin Clinton (1851448724), Devin Clinton (1851448724)","Dewitt David (1265424485), Dewitt David (1265424485)","Dey Mahua (1891933057), Dey Mahua (1891933057)","Dhall Sanjay (1598943615), Dhall Sanjay (1598943615)","Dhupar Scott (1942289491), Dhupar Scott (1942289491)","Dias Mark (117457690), Dias Mark (117457690)","Dickman Curtis  (1003802539), Dickman Curtis  (1003802539)","Dimar John (1235192451), Dimar John (1235192451)","DiNAPOLI VINCENT (1144482746), DiNAPOLI VINCENT (1144482746)","Dinh Dzung (1679513642), Dinh Dzung (1679513642)","DiRisio Darryl  (1407858830), DiRisio Darryl  (1407858830)","Ditty Benjamin (1215163795), Ditty Benjamin (1215163795)","Djurasovic Mladen (1609839257), Djurasovic Mladen (1609839257)","Dodd Zachary (1538327010), Dodd Zachary (1538327010)","Donner Jeffrey (1710968185), Donner Jeffrey (1710968185)","Doppenberg Egon (1083602551), Doppenberg Egon (1083602551)","Duffy Kent (1508827452), Duffy Kent (1508827452)","Dull Scott (1568465961), Dull Scott (1568465961)","Duncan Richard (1003871195), Duncan Richard (1003871195)","Durward Quentin (1457354383), Durward Quentin (1457354383)","Dyer Emmett (1962400903), Dyer Emmett (1962400903)","Eads Todd (1902063225), Eads Todd (1902063225)","Eckardt Gerald (1013189737), Eckardt Gerald (1013189737)","Ecker Robert  (1184683708), Ecker Robert  (1184683708)","Edwards John (1568692887), Edwards John (1568692887)","Egnatchik James (1699751990), Egnatchik James (1699751990)","Ehtesham Moneeb  (1346413929), Ehtesham Moneeb  (1346413929)","Einhaus Stephanie  (1720078827), Einhaus Stephanie  (1720078827)","Eisenberg Mark (1871611731), Eisenberg Mark (1871611731)","Eisler Jesse (1326017617), Eisler Jesse (1326017617)","Elijovich Lucas (1750480554), Elijovich Lucas (1750480554)","Elisevich Kostantin (1841368651), Elisevich Kostantin (1841368651)","Ellegala Dilantha (1710056080), Ellegala Dilantha (1710056080)","Ellis Jason (1629244884), Ellis Jason (1629244884)","Elowitz Eric (1780666735), Elowitz Eric (1780666735)","Elshihabi Said (1467477463), Elshihabi Said (1467477463)","Elsner Henry (1508857749), Elsner Henry (1508857749)","Emrich Joseph (1649262858), Emrich Joseph (1649262858)","Erickson Melissa (1730356056), Erickson Melissa (1730356056)","Espinosa Jose (1982690632), Espinosa Jose (1982690632)","Espiritu Michael (1902932015), Espiritu Michael (1902932015)","Fahrbach John (1205045424), Fahrbach John (1205045424)","Falloon Thomas (1902897051), Falloon Thomas (1902897051)","Falowski Steven (1720272800), Falowski Steven (1720272800)","Farahvar Arash (1659382679), Farahvar Arash (1659382679)","Farkas Jacques (1437104577), Farkas Jacques (1437104577)","Fassett Daniel (1205902442), Fassett Daniel (1205902442)","Felix Brent (1851383350), Felix Brent (1851383350)","Fergus Allan (1770563561), Fergus Allan (1770563561)","Fernandez Julius (1841289493), Fernandez Julius (1841289493)","Field Melvin (1962451823), Field Melvin (1962451823)","Fifi Johanna  (1396878013), Fifi Johanna  (1396878013)","Fitzpatrick Brian (1740276138), Fitzpatrick Brian (1740276138)","Fleming James (1245448083), Fleming James (1245448083)","Florman Jeffrey  (1306886130), Florman Jeffrey  (1306886130)","Floyd David (1699783498), Floyd David (1699783498)","Fogelson Jeremy (1871565606), Fogelson Jeremy (1871565606)","Foley Kevin (1861451874), Foley Kevin (1861451874)","Foster Kimberly (1952533739), Foster Kimberly (1952533739)","Fountain Todd (1013995901), Fountain Todd (1013995901)","Fowler Wesley (1689678419), Fowler Wesley (1689678419)","Fox William (1134241243), Fox William (1134241243)","Fox W. Christopher (1134241243), Fox W. Christopher (1134241243), Fox W. Christopher (1134241243)","Fox Benjamin (1184955734), Fox Benjamin (1184955734)","Francis Todd (1265607139), Francis Todd (1265607139)","Franke Eric (1588787634), Franke Eric (1588787634)","Frankel Roger (1295811982), Frankel Roger (1295811982)","Franklin Robbi (1619171279), Franklin Robbi (1619171279)","Frazee John (1255412300), Frazee John (1255412300)","Freeman Thomas  (1962421297), Freeman Thomas  (1962421297)","Friedman Allan  (1881777043), Friedman Allan  (1881777043)","Friedman William (1942237615), Friedman William (1942237615)","Friedman Eric (1932198280), Friedman Eric (1932198280)","Fu Kai Ming (1104033349), Fu Kai Ming (1104033349)","Fulkerson Daniel (1386802387), Fulkerson Daniel (1386802387)","Fullagar Timothy (1629088364), Fullagar Timothy (1629088364)","Gaede Steven (1730141060), Gaede Steven (1730141060)","Gallati Christopher (1649448713), Gallati Christopher (1649448713)","Galt Spencer (1598733586), Galt Spencer (1598733586)","Ganapathy Venkatanarayanan (1588070239), Ganapathy Venkatanarayanan (1588070239)","Gandhi Ravi (1174787337), Gandhi Ravi (1174787337)","Gandhoke Gurpreet (1639459233), Gandhoke Gurpreet (1639459233)","Gardner Paul (1821012832), Gardner Paul (1821012832)","Gardon Mark (1366470544), Gardon Mark (1366470544)","Garg Ankur (1598961807), Garg Ankur (1598961807)","Gates Marilyn (1134294879), Gates Marilyn (1134294879)","Gaufin Lynn (1205857158), Gaufin Lynn (1205857158)","Gebreyohanns Mehari (1750466595), Gebreyohanns Mehari (1750466595)","Geckle David (1588634588), Geckle David (1588634588)","Gehring Randy (1134198567), Gehring Randy (1134198567)","Gerdes Jeffrey (1134181571), Gerdes Jeffrey (1134181571)","German John (1598787905), German John (1598787905)","Gewirtz Robert (1316944689), Gewirtz Robert (1316944689)","Gianaris Peter (1699759753), Gianaris Peter (1699759753)","Gill Waltus (1013168004), Gill Waltus (1013168004)","Gill Kevin (1427054964), Gill Kevin (1427054964)","Glassman Steven (1275531501), Glassman Steven (1275531501)","Gluf Wayne (1518930775), Gluf Wayne (1518930775)","Gocio Allan (1477503597), Gocio Allan (1477503597)","Gonzalez Nestor (1730387887), Gonzalez Nestor (1730387887)","Gooch Hubert (1700878212), Gooch Hubert (1700878212)","Goodman Greg (1023019346), Goodman Greg (1023019346)","Goodwin Rory (1538303235), Goodwin Rory (1538303235)","Goren Oded (1003299629), Goren Oded (1003299629)","Gottfried Oren (1578764213), Gottfried Oren (1578764213)","GOZAL YAIR (1356630818), GOZAL YAIR (1356630818)","Graham Robert (1942231501), Graham Robert (1942231501)","Grahm Thomas (1568465474), Grahm Thomas (1568465474)","Grande Andrew (1629289939), Grande Andrew (1629289939)","Green Barth (1730106204), Green Barth (1730106204)","Greenberg Mark (1205855533), Greenberg Mark (1205855533)","Greenberg Jonathan  (1134229925), Greenberg Jonathan  (1134229925)","Greene Karl (1376535492), Greene Karl (1376535492)","Griessenauer Christoph (1376779850), Griessenauer Christoph (1376779850)","Griffith Stephen (1659552818), Griffith Stephen (1659552818)","Griffitt Wesley (1821002684), Griffitt Wesley (1821002684)","Grimm Bennett (1891877742), Grimm Bennett (1891877742)","Gropper Gary  (1164531844), Gropper Gary  (1164531844)","Gross Naina (1649200429), Gross Naina (1649200429)","Grossi Peter (1881863744), Grossi Peter (1881863744)","Guillaume Daniel (1932193083), Guillaume Daniel (1932193083)","Guitton Jean (1114979242), Guitton Jean (1114979242)","Gum Jeffrey (1982879607), Gum Jeffrey (1982879607)","Gumidyala Krishna (1649486994), Gumidyala Krishna (1649486994)","Guthikonda Bharat (1326236324), Guthikonda Bharat (1326236324)","Guthrie Barton (1326083510), Guthrie Barton (1326083510)","Hadar Eldad (1952495947), Hadar Eldad (1952495947)","Hadley Mark (1194761403), Hadley Mark (1194761403)","Haglund Michael (1568646612), Haglund Michael (1568646612)","Hahn Michael (1891784237), Hahn Michael (1891784237)","Haid Regis (1811992449), Haid Regis (1811992449)","Haines Stephen (1255365540), Haines Stephen (1255365540)","Hammers Ronald (1730340324), Hammers Ronald (1730340324)","Han Patrick (1043203706), Han Patrick (1043203706)","Haque Raqeeb (1851545875), Haque Raqeeb (1851545875)","Harbaugh Robert (1811949332), Harbaugh Robert (1811949332)","Harker Colleen (1851347959), Harker Colleen (1851347959)","Harrington James  (1043204290), Harrington James  (1043204290)","Harrison Richard (1912935115), Harrison Richard (1912935115)","Hart David (1235155110), Hart David (1235155110), Hart David (1235155110)","Hartl Roger (1043236623), Hartl Roger (1043236623)","Hauck Erik (195250554), Hauck Erik (195250554)","Hawkins Alexander  (1619070802), Hawkins Alexander  (1619070802)","Haworth Charles (1669530390), Haworth Charles (1669530390)","Hawryluk Gregory  (1871934596), Hawryluk Gregory  (1871934596)","Hayes Seth (1366684110), Hayes Seth (1366684110)","Hayward Dustin (1235395849), Hayward Dustin (1235395849)","Hdeib Alia (1871798819), Hdeib Alia (1871798819)","Heafner Michael (1811995715), Heafner Michael (1811995715)","Healy Andrew (1699949669), Healy Andrew (1699949669)","Heilman Carl (1649229907), Heilman Carl (1649229907)","Heindel Clifford (1720035389), Heindel Clifford (1720035389)","Helm Gregory (1194894709), Helm Gregory (1194894709)","Helms Jody (1093930216), Helms Jody (1093930216)","Henegar Martin (1831197698), Henegar Martin (1831197698)","Heros Roberto (1962466987), Heros Roberto (1962466987)","Hervey-Jumper Shawn (1104945542), Hervey-Jumper Shawn (1104945542)","Herzig David (1184885915), Herzig David (1184885915)","Heth Jason (1184721433), Heth Jason (1184721433)","Hillard Virany (1972547750), Hillard Virany (1972547750)","Hiremath Girish (1811163603), Hiremath Girish (1811163603)","Hirschl Robert (1902019771), Hirschl Robert (1902019771)","Hiser Bradley (1750487823), Hiser Bradley (1750487823)","Hodes Jonathan (1851494983), Hodes Jonathan (1851494983)","Hoffer Seth (1104023142), Hoffer Seth (1104023142)","Hoh Daniel (1316110901), Hoh Daniel (1316110901)","Hoh Brian (1033164637), Hoh Brian (1033164637)","Hohl Justin (1639371149), Hohl Justin (1639371149)","Hoit Daniel (1902000698), Hoit Daniel (1902000698)","Holla Shripathi (1114037975), Holla Shripathi (1114037975)","Holland Christopher (1235373218), Holland Christopher (1235373218)","Hollis Peter (1629115308), Hollis Peter (1629115308)","Holloway William (1649396334), Holloway William (1649396334)","Holloway Kathryn (1366470072), Holloway Kathryn (1366470072)","Holly Langston (1063437192), Holly Langston (1063437192)","Hood Robert (1518973767), Hood Robert (1518973767)","Hooley Eric (1548230014), Hooley Eric (1548230014)","Hoover Steven (1235370982), Hoover Steven (1235370982)","Horn Eric (1053437541), Horn Eric (1053437541)","HORNE DALE (1023011707), HORNE DALE (1023011707)","Horowitz Michael (1881662716), Horowitz Michael (1881662716)","Hoski James (1285719096), Hoski James (1285719096)","Hsu Wesley (1407908528), Hsu Wesley (1407908528)","Hsu Edward (1942521968), Hsu Edward (1942521968)","Hu Yin (1477750768), Hu Yin (1477750768)","Humphries William (1265792576), Humphries William (1265792576)","Hunt Matthew (1619017787), Hunt Matthew (1619017787)","HWANG ROY (1134418965), HWANG ROY (1134418965)","Hylton Phillip (1487699112), Hylton Phillip (1487699112)","Iantosca Mark (1386694925), Iantosca Mark (1386694925)","Illig Joseph (1639171549), Illig Joseph (1639171549)","Ireland Patrick (1164402368), Ireland Patrick (1164402368)","Isaacs Robert (1518041672), Isaacs Robert (1518041672)","Ivan Michael (1669700365), Ivan Michael (1669700365)","Jackson Garrett (1336381631), Jackson Garrett (1336381631)","Jackson Robert (1174551808), Jackson Robert (1174551808)","Jacobs Darren (1497956833), Jacobs Darren (1497956833)","Jacobs John (1912947995), Jacobs John (1912947995)","Jaikumar Sivakumar (1154345288), Jaikumar Sivakumar (1154345288)","Jaleel Naser (1437477387), Jaleel Naser (1437477387)","James Steven (1205810371), James Steven (1205810371)","James Robert (1952437097), James Robert (1952437097)","Jane sr John (1992874507), Jane sr John (1992874507)","Jarrell Stuart (1467650663), Jarrell Stuart (1467650663)","Jaufmann Bruce (1225134109), Jaufmann Bruce (1225134109)","Javed Tariq (1871579235), Javed Tariq (1871579235)","Jayarao Mayur (1881853158), Jayarao Mayur (1881853158)","Jenkins Jeffrey (1942291133), Jenkins Jeffrey (1942291133)","Jenkins John (1932143435), Jenkins John (1932143435)","Jensen Wade (1730139890), Jensen Wade (1730139890)","Jernigan Sarah (1467673723), Jernigan Sarah (1467673723)","Jho Hae-Dong (1386645307), Jho Hae-Dong (1386645307)","Jho Diana (1346500196), Jho Diana (1346500196)","Jimenez Omar  (1154351930), Jimenez Omar  (1154351930)","JIMENEZ LINCOLN (1003011339), JIMENEZ LINCOLN (1003011339)","Johnson Matthew (1376688150), Johnson Matthew (1376688150)","Johnson Michele (1295861342), Johnson Michele (1295861342)","Johnson Keyne (1053577015), Johnson Keyne (1053577015)","Johnson Mark (1679523260), Johnson Mark (1679523260)","Johson Randall (1447293188), Johson Randall (1447293188)","Jones David (1336132430), Jones David (1336132430)","Jones  Kristen  (1225260003), Jones  Kristen  (1225260003)","Julien Terrence (1548355779), Julien Terrence (1548355779)","Jun-San Yang Lynda  (1295833069), Jun-San Yang Lynda  (1295833069)","KACHMANN MICHAEL (1104040732), KACHMANN MICHAEL (1104040732)","Kaibara Taro (1467417444), Kaibara Taro (1467417444)","Kaiser Michael (1598818817), Kaiser Michael (1598818817), Kaiser Michael (1598818817)","Kakarla Udaya (1609056647), Kakarla Udaya (1609056647)","Kalkanis Steven (1861567505), Kalkanis Steven (1861567505)","Kansal Narendra (1407897333), Kansal Narendra (1407897333)","Kaptain George (1306813621), Kaptain George (1306813621)","Karahalios Dean (1245205210), Karahalios Dean (1245205210)","Karampelas Ioannis (1528216868), Karampelas Ioannis (1528216868)","Karas Chris (1174781587), Karas Chris (1174781587)","Karikari Isaac (1497891717), Karikari Isaac (1497891717)","Karimi Reza (1891950788), Karimi Reza (1891950788)","Kasliwal Manish (1306159272), Kasliwal Manish (1306159272)","Kazemi Noojan (1164701538), Kazemi Noojan (1164701538)","Kelleher John (1609082072), Kelleher John (1609082072)","Kennedy Jerone (1780644401), Kennedy Jerone (1780644401)","Kershenovich Amir (1285822197), Kershenovich Amir (1285822197)","Khairi Saad (1780685818), Khairi Saad (1780685818)","Khajavi Kaveh (1487610275), Khajavi Kaveh (1487610275)","Khaldi Ahmad (1679736938), Khaldi Ahmad (1679736938)","Khaleel Mohammed (1356541296), Khaleel Mohammed (1356541296)","Khan Shah-Naz (1063615904), Khan Shah-Naz (1063615904)","Khoshyomn Sami (1699719963), Khoshyomn Sami (1699719963)","Khoury George (1174582035), Khoury George (1174582035)","Khoury Michael (1992792659), Khoury Michael (1992792659)","Kiehm Kelly (1588654370), Kiehm Kelly (1588654370)","Kilburn Michael (1992884753), Kilburn Michael (1992884753)","Killeffer James (1851333728), Killeffer James (1851333728)","Kim Paul (1639362700), Kim Paul (1639362700)","Kinsman Michael (1740418235), Kinsman Michael (1740418235)","Klimo Paul (1336127968), Klimo Paul (1336127968)","Klopfenstein Jeffrey  (1578508354), Klopfenstein Jeffrey  (1578508354)","Klopper Hendrik (1942429394), Klopper Hendrik (1942429394)","Knaub Mark (1871557876), Knaub Mark (1871557876)","Knightly John (1912964008), Knightly John (1912964008)","Kole Max (1770658411), Kole Max (1770658411)","Kominek Selma (1750518544), Kominek Selma (1750518544)","Konrad Peter (1821197252), Konrad Peter (1821197252)","Kopell Brian (1568413300), Kopell Brian (1568413300)","Koreckij Theodore (1841432937), Koreckij Theodore (1841432937)","Kornel Ezriel (1194785592), Kornel Ezriel (1194785592)","Krauss William (1164492252), Krauss William (1164492252)","Kremer Michael (1982646949), Kremer Michael (1982646949)","Kringlen Mark (1326256314), Kringlen Mark (1326256314)","Kritzer Randy (1508859745), Kritzer Randy (1508859745)","Kruger David (1881684918), Kruger David (1881684918)","Kryzanski James (1730107467), Kryzanski James (1730107467)","Kucia Elisa (1700066842), Kucia Elisa (1700066842)","Kulwin Charles (1619294600), Kulwin Charles (1619294600)","La Marca Frank (1548367808), La Marca Frank (1548367808)","LaBagnara Michael (1881094357), LaBagnara Michael (1881094357)","Lacroix Michel (1316190168), Lacroix Michel (1316190168)","Lad Nandan (1346408507), Lad Nandan (1346408507)","Lal Sumeer (1588743330), Lal Sumeer (1588743330)","Lam Cornelius (1871695098), Lam Cornelius (1871695098)","Landi Michael (1437116308), Landi Michael (1437116308)","Lange Stephan (1255372728), Lange Stephan (1255372728)","Langer David (1790791846), Langer David (1790791846)","Lantner Howard (1730127382), Lantner Howard (1730127382)","Latefi Ahmad (1215220405), Latefi Ahmad (1215220405)","Lavine Sean (1386797868), Lavine Sean (1386797868), Lavine Sean (1386797868)","Lawson Matthew  (1730251943), Lawson Matthew  (1730251943)","Lawton Michael (1073562294), Lawton Michael (1073562294)","Ledlie Jon (1033112941), Ledlie Jon (1033112941)","Lee Ian (1164631842), Lee Ian (1164631842)","Lee Kangmin (1477760353), Lee Kangmin (1477760353)","Lee Albert  (1972570885), Lee Albert  (1972570885)","Lee Albert (1922200393), Lee Albert (1922200393)","Lee Sunghoon (1184642175), Lee Sunghoon (1184642175)","Leipzig Thomas (1720062193), Leipzig Thomas (1720062193)","Leone Anthony (1134297062), Leone Anthony (1134297062)","Levene Howard (1952574774), Levene Howard (1952574774), Levene Howard (1952574774)","Levi Allan (1386608016), Levi Allan (1386608016), Levi Allan (1386608016)","Levin Emily (1992824346), Levin Emily (1992824346)","Levine Mitchell (1073699195), Levine Mitchell (1073699195)","Levy Elad (1184683195), Levy Elad (1184683195)","Lewis Jeremy (1972707743), Lewis Jeremy (1972707743)","Lewis Jeffrey (1417933706), Lewis Jeffrey (1417933706)","Lichtor Terence (1114976289), Lichtor Terence (1114976289)","Lieberman Daniel  (1508868308), Lieberman Daniel  (1508868308)","Lin Julian (1437104593), Lin Julian (1437104593)","Lin Chi-Ta (1265759955), Lin Chi-Ta (1265759955)","Lin Franklin (1679648927), Lin Franklin (1679648927)","Lipson Adam (1912012071), Lipson Adam (1912012071)","Little Andrew (1205016250), Little Andrew (1205016250)","Litvack Zachary (1235347980), Litvack Zachary (1235347980)","Liu Kenneth (1245443068), Liu Kenneth (1245443068), Liu Kenneth (1245443068)","Loh Yince (1720020894), Loh Yince (1720020894)","Loomis Ralph (1699779595), Loomis Ralph (1699779595)","Lovell Laverne  (1346263514), Lovell Laverne  (1346263514)","Loven Tina (1306074109), Loven Tina (1306074109)","Lowry David (1578650123), Lowry David (1578650123)","Lu Daniel (1457585903), Lu Daniel (1457585903)","Lyness Leslie (1578876694), Lyness Leslie (1578876694)","Lytle Richard (1568466308), Lytle Richard (1568466308)","MacDonald Joel (1487744090), MacDonald Joel (1487744090), MacDonald Joel (1487744090)","Mace John (1114971264), Mace John (1114971264)","Macfarlane John (1679533343), Macfarlane John (1679533343)","Machinis Theofilos (1295944288), Machinis Theofilos (1295944288), Machinis Theofilos (1295944288)","Macyszyn Luke (), Macyszyn Luke ()","Madden Christopher (1992795140), Madden Christopher (1992795140)","Magadan Alejandro (1679523260), Magadan Alejandro (1679523260)","Mahan Mark (1477733426), Mahan Mark (1477733426)","Mahmood Asim (1689749327), Mahmood Asim (1689749327)","Mahmoud Akram (1982694642), Mahmoud Akram (1982694642), Mahmoud Akram (1982694642)","Malek Adel (1598872962), Malek Adel (1598872962)","Malik Ghaus (1497820138), Malik Ghaus (1497820138)","Mallik Gunwant (1376527663), Mallik Gunwant (1376527663)","Mandigo Christopher (1669625133), Mandigo Christopher (1669625133)","Mandigo Grace (1528212511), Mandigo Grace (1528212511), Mandigo Grace (1528212511)","MANDYBUR GEORGE (1437188596), MANDYBUR GEORGE (1437188596)","Mangels  Kyle (1174585640), Mangels  Kyle (1174585640)","Manon Jacinto (1326246638), Manon Jacinto (1326246638)","Manwaring Jotham (1679728133), Manwaring Jotham (1679728133)","MANZANARES JAMES (1689616989), MANZANARES JAMES (1689616989)","Manzano Glen (1093945867), Manzano Glen (1093945867), Manzano Glen (1093945867)","Mapstone Timothy (1528036571), Mapstone Timothy (1528036571)","Marchand ERICH (1588758965), Marchand ERICH (1588758965)","Marciano Frederick (1841286390), Marciano Frederick (1841286390)","Margetts Jeffrey (1346391430), Margetts Jeffrey (1346391430)","Marko Nicholas (1114199791), Marko Nicholas (1114199791)","MARLIN EVAN (1316251838), MARLIN EVAN (1316251838)","Marsh W. Richard (1346220407), Marsh W. Richard (1346220407)","Martin Michael (1003958893), Martin Michael (1003958893)","Martin Coleman (18412822043), Martin Coleman (18412822043)","Martin Jeffrey (1053425173), Martin Jeffrey (1053425173)","Martin  Christopher  (1710272042), Martin  Christopher  (1710272042)","Mathern Bruce (1518903491), Mathern Bruce (1518903491)","Matheus Virgilio (1881800571), Matheus Virgilio (1881800571)","Mattingly Thomas (1528038528), Mattingly Thomas (1528038528)","Maughan Peter (1700066768), Maughan Peter (1700066768)","Mayr Matthew (1710945415), Mayr Matthew (1710945415)","McBride Duncan (1700828704), McBride Duncan (1700828704)","McCall Todd (1508054297), McCall Todd (1508054297)","McCanna Shannon (1235396557), McCanna Shannon (1235396557)","McCarthy Richard (1457339715), McCarthy Richard (1457339715)","McCormick Paul (1891843934), McCormick Paul (1891843934)","McCrary Morris (1265435440), McCrary Morris (1265435440)","McDougall Cameron (1598751018), McDougall Cameron (1598751018)","McGirt Matthew (1073665550), McGirt Matthew (1073665550)","McGirt_old Matthew (1073665550), McGirt_old Matthew (1073665550)","McInerney James (1528010048), McInerney James (1528010048)","McLanahan Charles (1225036106), McLanahan Charles (1225036106)","McLoughlin Gregory (1861624751), McLoughlin Gregory (1861624751)","McPHERSON CHRISTOPHER (1679515944), McPHERSON CHRISTOPHER (1679515944)","Mehta Rajesh (1326018326), Mehta Rajesh (1326018326)","Meinhardt Philip (1356592919), Meinhardt Philip (1356592919)","Melamed Itay (1619078656), Melamed Itay (1619078656)","Melisi James (1679532329), Melisi James (1679532329)","Mendoza Lattes Sergio (1255324372), Mendoza Lattes Sergio (1255324372)","Merrell Steven (1063452050), Merrell Steven (1063452050)","Meyer Scott (1518126242), Meyer Scott (1518126242)","Meyer Steven (1780687020), Meyer Steven (1780687020)","Meyers Philip (1033119458), Meyers Philip (1033119458)","Michael L (1164413928), Michael L (1164413928)","Miller James (1083884696), Miller James (1083884696)","Miller Clinton (1699721761), Miller Clinton (1699721761)","Miller John (1487845772), Miller John (1487845772)","Miller Joshua (1790734242), Miller Joshua (1790734242)","Miller Charles (1013980036), Miller Charles (1013980036)","Milligan Brian (1962475145), Milligan Brian (1962475145)","Missios Symeon (1144336538), Missios Symeon (1144336538)","Mkrdichian Edward (1477521607), Mkrdichian Edward (1477521607)","Mobasser Jean-Pierre (1144213703), Mobasser Jean-Pierre (1144213703)","Mocco J (1144425067), Mocco J (1144425067), Mocco J (1144425067)","Mohan Avinash (1134258486), Mohan Avinash (1134258486)","Moise Gaetan (1255580858), Moise Gaetan (1255580858), Moise Gaetan (1255580858)","Monteith Stephen (1689868119), Monteith Stephen (1689868119)","Moody Mark (1821173618), Moody Mark (1821173618)","Moore Daniel (1710047832), Moore Daniel (1710047832)","Morcos Jacques (1205899937), Morcos Jacques (1205899937)","Moreland Douglas (1942285739), Moreland Douglas (1942285739)","Morgan Chad (1013964493), Morgan Chad (1013964493)","Morr Simon (1245541267), Morr Simon (1245541267)","Morrill Kevin (1972694560), Morrill Kevin (1972694560)","Mortazavi Ali (1609863802), Mortazavi Ali (1609863802)","Moshel Yaron (1013111830), Moshel Yaron (1013111830)","Moulding Hugh (1669683165), Moulding Hugh (1669683165)","Muhlbauer Michael (1083603641), Muhlbauer Michael (1083603641)","Mumert Michael (1871747469), Mumert Michael (1871747469)","Mummaneni Praveen (1407960099), Mummaneni Praveen (1407960099)","Munson Gregory (1245239987), Munson Gregory (1245239987)","Murad Gregory (1679658439), Murad Gregory (1679658439)","Murali Raj (1902891831), Murali Raj (1902891831)","Murk Steven (1457330110), Murk Steven (1457330110)","Musacchio Michael (1306036876), Musacchio Michael (1306036876)","Nalbach Stephen (1669672960), Nalbach Stephen (1669672960)","Nanda Anil (1912926643), Nanda Anil (1912926643)","Narayan Kailash (1932214707), Narayan Kailash (1932214707)","Nasr Fadi (1609918416), Nasr Fadi (1609918416)","Nathan David (1194731240), Nathan David (1194731240)","Nauta Haring (1518066539), Nauta Haring (1518066539)","Nduku Valentine (1871770263), Nduku Valentine (1871770263)","Neal Matthew (1023270386), Neal Matthew (1023270386)","Neimat Joseph (1417984329), Neimat Joseph (1417984329)","Nelson Paul (1942203591), Nelson Paul (1942203591)","Neubardt Seth (1306806724), Neubardt Seth (1306806724)","Newell david (1164581054), Newell david (1164581054)","NICHOLS TANN (1932384930), NICHOLS TANN (1932384930)","Nickele Christopher (1285834630), Nickele Christopher (1285834630)","Norton Thomas (1477522167), Norton Thomas (1477522167)","Notarianni Christina (1447460415), Notarianni Christina (1447460415)","Novakovic Roberta (1558412536), Novakovic Roberta (1558412536)","Nudelman Robert (1578554903), Nudelman Robert (1578554903)","Nundkumar Neelesh (1417262692), Nundkumar Neelesh (1417262692)","O_Rourke Daniel (1992779276), O_Rourke Daniel (1992779276)","ONeill Kevin (1770787269), ONeill Kevin (1770787269)","Oberer Daniel (1548354459), Oberer Daniel (1548354459)","Oetting Gregory (1710939889), Oetting Gregory (1710939889)","Ogden Alfred (1174795116), Ogden Alfred (1174795116), Ogden Alfred (1174795116)","Oh Michael (1275508525), Oh Michael (1275508525)","Okor Mamerhi (1205044005), Okor Mamerhi (1205044005)","Olinger Rodney (1942290739), Olinger Rodney (1942290739)","Olive Paul (1851390645), Olive Paul (1851390645)","Oliver T. (1861617755), Oliver T. (1861617755)","Oliver-Smith David (1952394934), Oliver-Smith David (1952394934)","Olivero William (1871609669), Olivero William (1871609669)","Oppenlander Mark (1033373998), Oppenlander Mark (1033373998)","Oren Jonathan (1932333002), Oren Jonathan (1932333002)","Orphanos John (1336346964), Orphanos John (1336346964)","Orringer Daniel (1124141296), Orringer Daniel (1124141296)","Ortiz Rafael (1902089758), Ortiz Rafael (1902089758)","Oswald Timothy (1114965241), Oswald Timothy (1114965241)","Ots Max (1669498093), Ots Max (1669498093)","Owens Roger (1740328178), Owens Roger (1740328178)","Oxford Robert (1437161395), Oxford Robert (1437161395)","Pabaney Aqueel (1275763591), Pabaney Aqueel (1275763591)","Pacult Artur (1730150913), Pacult Artur (1730150913)","Pait T. (1861582348), Pait T. (1861582348)","Palacio Carlos (1346286929), Palacio Carlos (1346286929)","Pallatroni Henry (1003880238), Pallatroni Henry (1003880238)","Pandey Aditya (1184825200), Pandey Aditya (1184825200)","Paonessa Kenneth (1386695096), Paonessa Kenneth (1386695096)","Pappu Saguna (1134268121), Pappu Saguna (1134268121)","Paramasivam Srivinasan  (1609176239), Paramasivam Srivinasan  (1609176239)","Park Michael (1942427117), Park Michael (1942427117), Park Michael (1942427117)","Park Paul (1801993167), Park Paul (1801993167)","Park HaeJoe (1124237144), Park HaeJoe (1124237144)","Parr Ann (1912136284), Parr Ann (1912136284)","Parry Phillip (1770715559), Parry Phillip (1770715559)","Patel Rakesh (1285914069), Patel Rakesh (1285914069)","Patel Akshal (1447451562), Patel Akshal (1447451562)","Patil Parag (1629175989), Patil Parag (1629175989)","Paulsen Richard (1780692996), Paulsen Richard (1780692996)","Payner Troy (1922082866), Payner Troy (1922082866)","Peterson Eric (1801900436), Peterson Eric (1801900436)","Phookan Gautam (1093750978), Phookan Gautam (1093750978)","Pisani David (1932149119), Pisani David (1932149119)","Polifka Adam (1427251230), Polifka Adam (1427251230)","Polly Dave (1669483046), Polly Dave (1669483046)","Ponce Francisco (1245410208), Ponce Francisco (1245410208)","Pool Henry (1497748693), Pool Henry (1497748693)","Porter Randall (1730176389), Porter Randall (1730176389)","Potts Eric (1265424543), Potts Eric (1265424543)","Poulad David (1184695090), Poulad David (1184695090)","Pouratian Nader (1255548418), Pouratian Nader (1255548418)","Powers Alexander (1134397714), Powers Alexander (1134397714)","Pratt Kimball (1588608293), Pratt Kimball (1588608293)","Price Kenneth (1861459802), Price Kenneth (1861459802)","Pride Glenn (1295790012), Pride Glenn (1295790012)","Pritchard Patrick (1619901253), Pritchard Patrick (1619901253)","Pritz Michael (1104829746), Pritz Michael (1104829746)","Prostko E. (1336134840), Prostko E. (1336134840)","Pryputniewicz David (1871790691), Pryputniewicz David (1871790691)","Przybylo Jason (1083908677), Przybylo Jason (1083908677)","Puckett Timothy (1447228952), Puckett Timothy (1447228952)","Pugsley Stanley (1194866889), Pugsley Stanley (1194866889)","Puno Rolando (1043273618), Puno Rolando (1043273618)","QUATTROCCHI KEITH (1730180910), QUATTROCCHI KEITH (1730180910)","Rabb Craig (1538108931), Rabb Craig (1538108931)","Rabin Doron (1821398355), Rabin Doron (1821398355)","Ragnarsson Thorir (1013910363), Ragnarsson Thorir (1013910363)","Rahman Salim (1295782670), Rahman Salim (1295782670)","Rahman Maryam (1821167248), Rahman Maryam (1821167248)","Ramirez Pedro (1689847733), Ramirez Pedro (1689847733)","Randazzo Ciro (1114116464), Randazzo Ciro (1114116464)","Rapacki Thomas (1467494047), Rapacki Thomas (1467494047)","Ray John (1346228889), Ray John (1346228889)","Razack Nizam (1447237045), Razack Nizam (1447237045)","Reavey-Cantwell John (1740363837), Reavey-Cantwell John (1740363837)","Rectenwald John (1992806905), Rectenwald John (1992806905)","Redding Mark (1851399612), Redding Mark (1851399612)","Reddy Chandan (1356558175), Reddy Chandan (1356558175)","Reeder  Ralph (1811990161), Reeder  Ralph (1811990161)","Reichman Mark (1942260617), Reichman Mark (1942260617)","Reichman Howard  (1932123940), Reichman Howard  (1932123940)","Reiter George (189174317), Reiter George (189174317)","Remondino Robert (1841289196), Remondino Robert (1841289196)","Renfro Mark (1003819913), Renfro Mark (1003819913)","Rhee Michael (1124255021), Rhee Michael (1124255021)","Rhoton Eric (1033113949), Rhoton Eric (1033113949)","Rice Robert (1801112271), Rice Robert (1801112271)","Rich Charles (1851351530), Rich Charles (1851351530)","Richardson William (18313286475), Richardson William (18313286475)","Riesenburger Ron (1770775256), Riesenburger Ron (1770775256)","RINGER ANDREW (1134237712), RINGER ANDREW (1134237712)","Ritter Ann (1295813459), Ritter Ann (1295813459)","Rivero Sergio (1730372731), Rivero Sergio (1730372731)","Rivet Dennis (1740260223), Rivet Dennis (1740260223)","Rizk Elias (1316164601), Rizk Elias (1316164601)","Robertson Jon (1871583054), Robertson Jon (1871583054)","Rock Jack  (1215002951), Rock Jack  (1215002951)","Rodgers Richard (1841265089), Rodgers Richard (1841265089)","Rogers R (1417112947), Rogers R (1417112947)","Romero Luis (1678763783), Romero Luis (1678763783)","Roper Steven  (1679500342), Roper Steven  (1679500342)","Rosen David (1265684518), Rosen David (1265684518)","Rosenberg William (1487626768), Rosenberg William (1487626768)","Rosenblum Mark (1124193867), Rosenblum Mark (1124193867)","Roth Patrick  (1760459085), Roth Patrick  (1760459085)","Rughani Anand (1548472343), Rughani Anand (1548472343)","Rumana Christopher (1568438489), Rumana Christopher (1568438489)","Ryken Timothy (1235122359), Ryken Timothy (1235122359), Ryken Timothy (1235122359), Ryken Timothy (1235122359)","Safain Mina (1821228883), Safain Mina (1821228883)","Sahlein Daniel (1578769188), Sahlein Daniel (1578769188)","Sampath Raghuram (1144280538), Sampath Raghuram (1144280538)","Sampson John (1720158553), Sampson John (1720158553)","Sanan Abhay (1366411019), Sanan Abhay (1366411019)","Sanborn  Matthew (1285783688), Sanborn  Matthew (1285783688)","Saphier Paul  (1154516532), Saphier Paul  (1154516532)","Sarkar Atom (1437109584), Sarkar Atom (1437109584)","Sartorius Carl (1407849086), Sartorius Carl (1407849086)","Sather Michael (1235358144), Sather Michael (1235358144)","Sattar Ahsan (1154551554), Sattar Ahsan (1154551554)","Sauter Kent (1679510424), Sauter Kent (1679510424)","Savage Jennifer (1407031354), Savage Jennifer (1407031354)","Savage Jesse (1881828085), Savage Jesse (1881828085)","Sawin Paul (1053361386), Sawin Paul (1053361386)","Scarrow Alan (1972537132), Scarrow Alan (1972537132)","Schermerhorn Thomas (1518962026), Schermerhorn Thomas (1518962026)","Schirmer Clemens (1649486069), Schirmer Clemens (1649486069)","Schlifka Brett (1790728913), Schlifka Brett (1790728913)","Schloesser Peter (1508806233), Schloesser Peter (1508806233)","Schmidt Meic (1740365436), Schmidt Meic (1740365436)","Schmidt Richard (1235219130), Schmidt Richard (1235219130)","Schmidt John  (1962466029), Schmidt John  (1962466029)","Schopick Steven (1205816998), Schopick Steven (1205816998)","Schroeder Kurt (1861461170), Schroeder Kurt (1861461170)","Schwalb Jason (1366497950), Schwalb Jason (1366497950)","Schwarz Jacob (1386686004), Schwarz Jacob (1386686004)","Sciubba Daniel (1043357270), Sciubba Daniel (1043357270)","Scott John (1346246501), Scott John (1346246501)","Selman Warren (1679599542), Selman Warren (1679599542)","Selznick Lee (1104945997), Selznick Lee (1104945997)","Sembrano Jonathan (1932113487), Sembrano Jonathan (1932113487)","Semenoff David (1407877210), Semenoff David (1407877210)","Senatus Patrick (1831381821), Senatus Patrick (1831381821)","Seyfried Donald (1033284773), Seyfried Donald (1033284773)","Shaffrey Mark (1417026055), Shaffrey Mark (1417026055)","Shaffrey Chris (1235208877), Shaffrey Chris (1235208877)","Shah Mitesh (1851394340), Shah Mitesh (1851394340)","Shah Hamid (1679693931), Shah Hamid (1679693931)","Shamie Arya Nick (1619073954), Shamie Arya Nick (1619073954)","Shang Ty (1578711941), Shang Ty (1578711941)","Shanker Srenath (1336591841), Shanker Srenath (1336591841)","Shannon Craig (1427451954), Shannon Craig (1427451954)","Shapiro Scott (1790788321), Shapiro Scott (1790788321)","Sharma Krishn (1235190240), Sharma Krishn (1235190240)","Shaver Ellen (1457306821), Shaver Ellen (1457306821)","Shea Kenneth (1881855187), Shea Kenneth (1881855187)","Shehadi Joseph (1174560890), Shehadi Joseph (1174560890)","Shenai Mahesh (1467660274), Shenai Mahesh (1467660274)","Sherban Ross (1972705077), Sherban Ross (1972705077)","Sherburn Eric (1306808316), Sherburn Eric (1306808316)","Shin Peter (1568522035), Shin Peter (1568522035)","Shirley Eric (1548290125), Shirley Eric (1548290125)","Shrivastava Raj (1184609240), Shrivastava Raj (1184609240)","Shuff Charles (1437248622), Shuff Charles (1437248622)","Shumaker Grant (1841265139), Shumaker Grant (1841265139)","Siddiqui Adnan (1558325951), Siddiqui Adnan (1558325951)","Sillay Karl (1184734030), Sillay Karl (1184734030)","Sills Allen (1225028012), Sills Allen (1225028012)","Silver Jon (1407850233), Silver Jon (1407850233)","Silvidi Julius (1730121385), Silvidi Julius (1730121385)","Simmons Nathan (1972529121), Simmons Nathan (1972529121)","Sin Anthony (1073738613), Sin Anthony (1073738613)","Singh Harshpal (1437317567), Singh Harshpal (1437317567)","Singleton Richard  (1598962094), Singleton Richard  (1598962094)","Siu Alan (1306073457), Siu Alan (1306073457)","SKIDMORE BRADBURY (1477661189), SKIDMORE BRADBURY (1477661189)","Sloan Andrew (1952317554), Sloan Andrew (1952317554)","Slotkin Jonathan (1952333486), Slotkin Jonathan (1952333486)","Smith Mark (1750380580), Smith Mark (1750380580)","Smith Maurice (1912998600), Smith Maurice (1912998600)","Smith Justin (1548463102), Smith Justin (1548463102)","Smith Donald (1568481802), Smith Donald (1568481802)","Smith Ken (1033101126), Smith Ken (1033101126)","Smith Donald (1376557512), Smith Donald (1376557512)","Smith Bryson (1669507984), Smith Bryson (1669507984)","Smith David (1770763732), Smith David (1770763732)","Smithson John (1669465811), Smithson John (1669465811)","Snell Brian (1225021702), Snell Brian (1225021702)","Snyder William (1669451753), Snyder William (1669451753)","Snyder Laura (1366606212), Snyder Laura (1366606212)","Snyder Kenneth (1952628315), Snyder Kenneth (1952628315)","Solomon Robert (1306987227), Solomon Robert (1306987227)","Sorenson Jeffrey (1760472757), Sorenson Jeffrey (1760472757)","Sorte Danielle (1023263704), Sorte Danielle (1023263704)","Spiro David (1932343324), Spiro David (1932343324)","Spiro Richard (1790753622), Spiro Richard (1790753622)","Spurgeon Angela (1235367665), Spurgeon Angela (1235367665)","Stadlan Noam (1962478271), Stadlan Noam (1962478271)","Starke Robert (1821222712), Starke Robert (1821222712)","Steenland Peter (1881814770), Steenland Peter (1881814770)","Steichen John (1053371328), Steichen John (1053371328)","Stephens Byron (1568788974), Stephens Byron (1568788974)","Stern Joseph (1558352831), Stern Joseph (1558352831)","Stern Jack (1730140666), Stern Jack (1730140666)","Stillerman Charles (1477628667), Stillerman Charles (1477628667)","Stippler Martina (1427255140), Stippler Martina (1427255140)","Stockwell David (1861664682), Stockwell David (1861664682)","Stoffman Michael (1003847484), Stoffman Michael (1003847484)","Stouffer Mark (1316131790), Stouffer Mark (1316131790)","Strang Robert (1013962935), Strang Robert (1013962935)","Strom Russell (1851566855), Strom Russell (1851566855)","Stuart Robert (1770734675), Stuart Robert (1770734675)","Suddaby Loubert (1609869783), Suddaby Loubert (1609869783)","Sughrue Michael (1497977359), Sughrue Michael (1497977359)","Sukul Vishad (1194985192), Sukul Vishad (1194985192)","Sullivan Stephen (1033158530), Sullivan Stephen (1033158530)","Sun Hai (1952507774), Sun Hai (1952507774)","Supler Mitchell (1114990553), Supler Mitchell (1114990553)","Suri Muhammad Fareed (1912054214), Suri Muhammad Fareed (1912054214)","Sweasey Thomas (1396798732), Sweasey Thomas (1396798732)","Sweet Jennifer (1790011229), Sweet Jennifer (1790011229)","Syed Ishaq  (1104082676), Syed Ishaq  (1104082676)","Szerlip Nicholas (1932235074), Szerlip Nicholas (1932235074)","Tabbosha Monir  (1780849539), Tabbosha Monir  (1780849539)","Taddonio Rudolph (1346287620), Taddonio Rudolph (1346287620)","Tall Reginald (1699774265), Tall Reginald (1699774265)","Tandon Adesh (1750602686), Tandon Adesh (1750602686)","Taylor Christopher (1841206455), Taylor Christopher (1841206455)","Teal Kevin (1356391387), Teal Kevin (1356391387)","Techy Fernando (1922265537), Techy Fernando (1922265537)","Teff Richard (1982675104), Teff Richard (1982675104)","TEMPEL ZACHARY (1316243264), TEMPEL ZACHARY (1316243264)","Terry Anna (1700081395), Terry Anna (1700081395)","Thambuswamy Michael (1134369556), Thambuswamy Michael (1134369556)","Theodore Nicholas (1982699567), Theodore Nicholas (1982699567)","Thoman William (1821206392), Thoman William (1821206392)","Thomas Michael (1588673461), Thomas Michael (1588673461)","Thompson Byron (1609973437), Thompson Byron (1609973437)","Thompson Van (1952394264), Thompson Van (1952394264)","Tibbs Robert (1871582213), Tibbs Robert (1871582213)","Timmons Shelly (1619950854), Timmons Shelly (1619950854)","Timmons Sherry (1619950854), Timmons Sherry (1619950854)","Tippets Richard (1124088802), Tippets Richard (1124088802)","Tobias Michael (1528234788), Tobias Michael (1528234788)","TOBLER WILLIAM (1265469571), TOBLER WILLIAM (1265469571)","Toczyl Gregory (1104002047), Toczyl Gregory (1104002047)","Tomecek Frank (1366403990), Tomecek Frank (1366403990)","Toms Steven  (1780632679), Toms Steven  (1780632679)","Tomycz Nestor (1316140338), Tomycz Nestor (1316140338)","Tracy Patrick (1750336889), Tracy Patrick (1750336889)","TRAN HOAN (1730228750), TRAN HOAN (1730228750)","Tsung Andrew (1760685390), Tsung Andrew (1760685390)","Tumialan Luis (1861678591), Tumialan Luis (1861678591)","Tummala Ramachandra (1124078027), Tummala Ramachandra (1124078027)","Turner Michael (1003891573), Turner Michael (1003891573)","Turner Dennis (1659331817), Turner Dennis (1659331817)","Turner Jay (1154558021), Turner Jay (1154558021)","Turner Donn (1316975022), Turner Donn (1316975022)","Tuttle Jonathan (1871708768), Tuttle Jonathan (1871708768)","Upadhyaya Cheerag (1720101827), Upadhyaya Cheerag (1720101827)","Uribe Juan  (1801951116), Uribe Juan  (1801951116)","Uribe Juan (1801951116), Uribe Juan (1801951116)","Valadka Alex (1881633709), Valadka Alex (1881633709)","Valdivia Juan (1043413412), Valdivia Juan (1043413412)","Vale Fernando (1710906052), Vale Fernando (1710906052)","Vamanan Karthik (1033141635), Vamanan Karthik (1033141635)","Van Hal Michael (1710274147), Van Hal Michael (1710274147)","Van Poppel Mark (1407062235), Van Poppel Mark (1407062235)","VanDerVeer Craig (1184622060), VanDerVeer Craig (1184622060)","Vanni Steven (1659396448), Vanni Steven (1659396448), Vanni Steven (1659396448)","Vernon Brian (1265639280), Vernon Brian (1265639280)","Vigna Franco (1760489736), Vigna Franco (1760489736)","Villalobos Hunaldo (1457338949), Villalobos Hunaldo (1457338949), Villalobos Hunaldo (1457338949)","Vingan Roy (1356318950), Vingan Roy (1356318950)","Virk Michael (1770719320), Virk Michael (1770719320)","Virojanapa Justin (1598063612), Virojanapa Justin (1598063612)","Vollmer Dennis (1013950047), Vollmer Dennis (1013950047)","Vresilovic Edward (1588606420), Vresilovic Edward (1588606420)","WADHWA RISHI (1841401734), WADHWA RISHI (1841401734)","Wadon Carol (1619073590), Wadon Carol (1619073590)","Wait Scott (1831379890), Wait Scott (1831379890)","Walker Matthew (1184688293), Walker Matthew (1184688293)","Walsh Michael (1922211788), Walsh Michael (1922211788)","Walzman Daniel (1407823727), Walzman Daniel (1407823727)","Wanebo John (1588625313), Wanebo John (1588625313)","Wang Vincent (1568584769), Wang Vincent (1568584769)","Wang Michael (1053347906), Wang Michael (1053347906), Wang Michael (1053347906)","Wang Huan (John) (1790908168), Wang Huan (John) (1790908168)","Ward John (1891745774), Ward John (1891745774)","Warnack Worthy (1922180314), Warnack Worthy (1922180314)","Warner Stephen (1164453106), Warner Stephen (1164453106)","WARNICK RONALD (1588694327), WARNICK RONALD (1588694327)","Wascher Thomas (1447242573), Wascher Thomas (1447242573)","Watridge Clarence (1013918085), Watridge Clarence (1013918085)","Weaver Jason (1972657252), Weaver Jason (1972657252)","Weaver Kyle (1427145549), Weaver Kyle (1427145549)","Wehman Joseph (1023141371), Wehman Joseph (1023141371)","Weinstein Philip (1902834328), Weinstein Philip (1902834328)","Welch Babu (1891759528), Welch Babu (1891759528)","Weller Simcha (1225062987), Weller Simcha (1225062987)","Welling Blake (1710151980), Welling Blake (1710151980)","Wells-Roth David (1366576845), Wells-Roth David (1366576845)","West Kristoffer (1285898650), West Kristoffer (1285898650)","White William (1689660078), White William (1689660078)","White Benjamin (1417924143), White Benjamin (1417924143)","White Jonathan (1477512507), White Jonathan (1477512507)","Whiting Donald (1194710608), Whiting Donald (1194710608)","Whitten Mathew (1215058011), Whitten Mathew (1215058011)","Whitworth Louis (1679532709), Whitworth Louis (1679532709)","Widdel Lars (1447397708), Widdel Lars (1447397708)","Wienecke Robert (1669461000), Wienecke Robert (1669461000)","Wilberger Jack (1245232081), Wilberger Jack (1245232081)","Wiles David (1851338628), Wiles David (1851338628)","Williams Brian (1548436660), Williams Brian (1548436660)","Williamson Richard (1609040609), Williamson Richard (1609040609)","Willis Brian (1821014648), Willis Brian (1821014648)","Wilson John A (1467432047), Wilson John A (1467432047)","Wilson James (1093724912), Wilson James (1093724912)","Wilson Jonathan L (1376727354), Wilson Jonathan L (1376727354)","Winer Jesse (1326295122), Winer Jesse (1326295122)","Winters Dennis (1194769604), Winters Dennis (1194769604)","Wirt Timothy (1992741839), Wirt Timothy (1992741839)","Witham Timothy (1841236825), Witham Timothy (1841236825)","Wolfe Stacey (1588897029), Wolfe Stacey (1588897029)","Wolinsky Jean-Paul (1265478119), Wolinsky Jean-Paul (1265478119)","Woodrow Sarah (1306077854), Woodrow Sarah (1306077854)","Woosley Ronald (1790746493), Woosley Ronald (1790746493)","Worth Robert (1407859028), Worth Robert (1407859028)","Worthington Ward (1952372138), Worthington Ward (1952372138)","Wray Steve (168967219), Wray Steve (168967219)","Wu Julian (1205887031), Wu Julian (1205887031)","Yamamoto Junichi (1811199367), Yamamoto Junichi (1811199367)","Yannopoulos Aris (1881634632), Yannopoulos Aris (1881634632)","Yarbrough Chester (1457589939), Yarbrough Chester (1457589939)","Yaun Amanda (1679656888), Yaun Amanda (1679656888)","Yavagal Dileep (1689661217), Yavagal Dileep (1689661217)","Yazbak Philip (1538119649), Yazbak Philip (1538119649)","Yen Chen-Po (1700014222), Yen Chen-Po (1700014222)","Yonas Howard (1932293982), Yonas Howard (1932293982)","York Jonathan (1366760563), York Jonathan (1366760563)","Young Ronald (1235131103), Young Ronald (1235131103)","Yu Alexander (1457612038), Yu Alexander (1457612038)","Zacharia Brad (1669631552), Zacharia Brad (1669631552)","Zacko Joseph (1316156144), Zacko Joseph (1316156144)","Zahos Peter (1356305049), Zahos Peter (1356305049)","ZAHRAWI FAISSAL (1578596003), ZAHRAWI FAISSAL (1578596003)","Zampella Edward  (1821055914), Zampella Edward  (1821055914)","Zerick William (1568469609), Zerick William (1568469609)","Zhang Donald (1609151968), Zhang Donald (1609151968)","Ziewacz John (1215050315), Ziewacz John (1215050315)","Zoller John (1174550917), Zoller John (1174550917)")
#levels(data$surg_location.factor)=c("-  -  (19423792284), -  -  (19423792284)","-  -  (91-0433740), -  -  (91-0433740)","Essex Specialized Surgery Center - West Orange  - NJ (223708021), Essex Specialized Surgery Center - West Orange  - NJ (223708021)","IU Health Bloomington Hospital - Bloomington - IN (1912984451), IU Health Bloomington Hospital - Bloomington - IN (1912984451)","IU Health Methodist - Indianapolis - In (1679646111), IU Health Methodist - Indianapolis - In (1679646111)","Tulsa Spine and Specialty Hospital - Tulsa - OK (1033185293), Tulsa Spine and Specialty Hospital - Tulsa - OK (1033185293)","Advanced Spine Surgery Center - Union  - NJ (1366757080), Advanced Spine Surgery Center - Union  - NJ (1366757080)","Advocate Bromenn Medical Center - Normal - Illinois (1962424036), Advocate Bromenn Medical Center - Normal - Illinois (1962424036)","Albany Medical Center Hospital - Albany - NY (1376577247), Albany Medical Center Hospital - Albany - NY (1376577247)","Allegheny General Hospital - Pittsburgh - PA (1811246846), Allegheny General Hospital - Pittsburgh - PA (1811246846)","Allen Memorial Hospital - Waterloo -  IA  (1336231091), Allen Memorial Hospital - Waterloo -  IA  (1336231091)","Arizona Orthopedic and Surgical Specialty Hospital - Chandler - AZ (1124163530), Arizona Orthopedic and Surgical Specialty Hospital - Chandler - AZ (1124163530)","Arrowhead Hospital  - Glendale - AZ (1326022765), Arrowhead Hospital  - Glendale - AZ (1326022765)","Audubon St Francis Medical Center - Colorado Springs - CO (1174592844), Audubon St Francis Medical Center - Colorado Springs - CO (1174592844)","Aurora St Lukes Medical Center -  -  (1841434644), Aurora St Lukes Medical Center -  -  (1841434644)","Baptist Hospital East - Louisville - KY (1265539498), Baptist Hospital East - Louisville - KY (1265539498)","Baptist Hospital of Miami -  -  (1528042884), Baptist Hospital of Miami -  -  (1528042884)","Baptist Memorial Hospital - Memphis - TN (1578527172), Baptist Memorial Hospital - Memphis - TN (1578527172)","Bay Area Medical Center - Marinette - WI (1043397177), Bay Area Medical Center - Marinette - WI (1043397177)","Baycare Aurora Llc - Green Bay - WI (1255387726), Baycare Aurora Llc - Green Bay - WI (1255387726)","Bellin Health Medical Center - Green Bay - WI  (1891740585), Bellin Health Medical Center - Green Bay - WI  (1891740585)","Berlin Memorial Hospital - Berlin - WI (1760413777), Berlin Memorial Hospital - Berlin - WI (1760413777)","BETHESDA NORTH HOSPITAL - CINCINNATI - OH (1710383625), BETHESDA NORTH HOSPITAL - CINCINNATI - OH (1710383625)","Bon Secours St Francis Hospital - Charleston - SC (1851361778), Bon Secours St Francis Hospital - Charleston - SC (1851361778)","Bon Secours St Marys Hospital - Henrico - Virginia (1962464016), Bon Secours St Marys Hospital - Henrico - Virginia (1962464016)","Bristol Regional Medical Center - Bristol - TN (1124058615), Bristol Regional Medical Center - Bristol - TN (1124058615)","Buffalo General Hospital - Buffalo - NY (1043235880), Buffalo General Hospital - Buffalo - NY (1043235880)","Butler Memorial Hospital - Butler - PA (1447317896), Butler Memorial Hospital - Butler - PA (1447317896)","Carle Foundation Hospital - Urbana - IL (1013071653), Carle Foundation Hospital - Urbana - IL (1013071653)","Carolina Center for Specialty Surgery - Charlotte - NC (1760418917), Carolina Center for Specialty Surgery - Charlotte - NC (1760418917)","Carolinas Medical Center - Charlotte - NC (1295789907), Carolinas Medical Center - Charlotte - NC (1295789907)","Carolinas Medical Center Northeast - Concord - NC  (1487866315), Carolinas Medical Center Northeast - Concord - NC  (1487866315)","Carolinas Medical Center Pineville - Charlotte - NC (1821039975), Carolinas Medical Center Pineville - Charlotte - NC (1821039975)","Carolinas Medical Center- University - Charlotte - NC (1346297892), Carolinas Medical Center- University - Charlotte - NC (1346297892)","Carondelet St Josephs Hospital - Tucson - AZ (860455920), Carondelet St Josephs Hospital - Tucson - AZ (860455920)","Chandler Regional Medical Center - Chandler - AZ (1871910968), Chandler Regional Medical Center - Chandler - AZ (1871910968)","Charleston Area Medical Center - Charleston - WV (1952390239), Charleston Area Medical Center - Charleston - WV (1952390239)","Charleston Area Medical Center Teays Valley Hospital, Inc. - Hurricane - WV (1144277708)","Chippenham Johnston Willis - Richmond - VA (1598708513), Chippenham Johnston Willis - Richmond - VA (1598708513)","CHRIST HOSPITAL - CINCINNATI - OH (1780633289), CHRIST HOSPITAL - CINCINNATI - OH (1780633289)","Christus Trinity Mother Frances Hospital - Tyler - Texas (1679578439), Christus Trinity Mother Frances Hospital - Tyler - Texas (1679578439)","Community Hospital -  -  (1003918210), Community Hospital -  -  (1003918210)","Covenant Medical Center  Inc - Waterloo - Iowa (1700827896), Covenant Medical Center  Inc - Waterloo - Iowa (1700827896)","Dartmouth-Hitchcock Medical Center - Lebanon - New Hampshire (1023092053), Dartmouth-Hitchcock Medical Center - Lebanon - New Hampshire (1023092053)","Dixie Regional Medical Center - St. George - Utah (1366452880), Dixie Regional Medical Center - St. George - Utah (1366452880)","Doctors Hospital of Augusta - Augusta - GA (1386698918), Doctors Hospital of Augusta - Augusta - GA (1386698918)","Duke Health Raleigh Hospital - Raleigh - NC (1013916352), Duke Health Raleigh Hospital - Raleigh - NC (1013916352)","Duke Regional Hospital - Durham - NC (1871592113), Duke Regional Hospital - Durham - NC (1871592113)","Duke University hospital - Durham - NC (1992703540), Duke University hospital - Durham - NC (1992703540)","Dunes Surgical Hospital LP - North Sioux City - SD (1093714073), Dunes Surgical Hospital LP - North Sioux City - SD (1093714073)","East Texas Medical Center  - Tyler - Texas (1235256884), East Texas Medical Center  - Tyler - Texas (1235256884)","Endo Surgical Center - Union - NJ (1740261882), Endo Surgical Center - Union - NJ (1740261882)","Englewood Hospital - Englewood - NJ (1083612881), Englewood Hospital - Englewood - NJ (1083612881)","Eskenazi Hospital - Indianapolis - IN (1568407310), Eskenazi Hospital - Indianapolis - IN (1568407310)","Evanston Hospital - Evanston - IL (1184670549), Evanston Hospital - Evanston - IL (1184670549)","Faith Regional Medical Center - Norfolk  - NE (1285676544), Faith Regional Medical Center - Norfolk  - NE (1285676544)","FirstHealth Moore Regional Hospital - Pinehurst  - NC (1255591566), FirstHealth Moore Regional Hospital - Pinehurst  - NC (1255591566)","Florida Hospital - Orlando - FL (1306938071), Florida Hospital - Orlando - FL (1306938071)","Florida Hospital Celebration Health - Celebration - FLORIDA (1386189520), Florida Hospital Celebration Health - Celebration - FLORIDA (1386189520)","Forbes Regional Hospital - Monroeville - Pennsylvania (1679592380), Forbes Regional Hospital - Monroeville - Pennsylvania (1679592380)","Franciscan Health St. Elizabeth Lafayette Central - Lafayette - IN (1538253521), Franciscan Health St. Elizabeth Lafayette Central - Lafayette - IN (1538253521)","Franciscan Health St. Elizabeth Layfayette East - Lafayette - IN (1356435341), Franciscan Health St. Elizabeth Layfayette East - Lafayette - IN (1356435341)","Franciscan Health St. Francis Hospital Indianapolis - Indianapolis - IN (1386749893), Franciscan Health St. Francis Hospital Indianapolis - Indianapolis - IN (1386749893)","Franciscan Surgery Center, LLC - Indianapolis - IN (1184601098)","Geisinger Community Medical Center - Scranton - PA (1366444507), Geisinger Community Medical Center - Scranton - PA (1366444507)","Geisinger Medical Center Danville - Danville - PA (1235215427), Geisinger Medical Center Danville - Danville - PA (1235215427)","Geisinger Wyoming Valley - Wilkes Barre - PA (1275620585), Geisinger Wyoming Valley - Wilkes Barre - PA (1275620585)","GOOD SAMARITAN HOSPITAL - CINCINNATI - OH (1073058632), GOOD SAMARITAN HOSPITAL - CINCINNATI - OH (1073058632)","Grant Medical Center - Columbus - Ohio (1255377149), Grant Medical Center - Columbus - Ohio (1255377149)","Greensboro Specialty Surgical Center - Greensboro - NC (1346207875), Greensboro Specialty Surgical Center - Greensboro - NC (1346207875)","Greenwich Hospital - Greenwich - Connecticut (1609846088), Greenwich Hospital - Greenwich - Connecticut (1609846088)","Hackensack University Medical Center - Hackensack - NJ (1603862036), Hackensack University Medical Center - Hackensack - NJ (1603862036)","Henrico Doctors Hospital - Forest Campus - Richmond - VA (1194762294), Henrico Doctors Hospital - Forest Campus - Richmond - VA (1194762294)","Henry Ford Hospital  - Detroit - MI (1134144801), Henry Ford Hospital  - Detroit - MI (1134144801)","Henry Ford West Bloomfield Hospital - West Bloomfield - MI (1407867559), Henry Ford West Bloomfield Hospital - West Bloomfield - MI (1407867559)","Heritage Valley Beaver - Beaver - PA (1063422053), Heritage Valley Beaver - Beaver - PA (1063422053)","Highland Park Hospital - Highland Park - IL (1609817220), Highland Park Hospital - Highland Park - IL (1609817220)","Hillcrest Medical Center - Tulsa - OK (1629057229), Hillcrest Medical Center - Tulsa - OK (1629057229)","Holland Hospital - Holland - MI (1871672618), Holland Hospital - Holland - MI (1871672618)","Holy Name Medical Center - Teaneck - NJ (1043389349), Holy Name Medical Center - Teaneck - NJ (1043389349)","Hudson Crossing Surgery Center: - Fort Lee - NJ (1457379158), Hudson Crossing Surgery Center: - Fort Lee - NJ (1457379158)","Indiana Spine Hospital - Carmel - IN (1316324403), Indiana Spine Hospital - Carmel - IN (1316324403)","Intermountain Medical Center - Murray - Utah (1043220650), Intermountain Medical Center - Murray - Utah (1043220650)","IU Health Arnett - Lafayette - IN (1326296211), IU Health Arnett - Lafayette - IN (1326296211)","IU Health Ball Memorial Hospital - Muncie - IN (1225195340), IU Health Ball Memorial Hospital - Muncie - IN (1225195340)","IU Health Methodist Plaza East - Indianapolis - IN (1326424144), IU Health Methodist Plaza East - Indianapolis - IN (1326424144)","IU Health Saxony Hospital - Fishers - Indiana (1477846145), IU Health Saxony Hospital - Fishers - Indiana (1477846145)","IU Health West - Avon - IN (1063443455), IU Health West - Avon - IN (1063443455)","IU North - Carmel - IN (1568492916), IU North - Carmel - IN (1568492916)","Jackson Madison County General Hospital - Jackson - TN (1467493916), Jackson Madison County General Hospital - Jackson - TN (1467493916)","Jackson Memorial Hospital - Miami - Florida (1225033020), Jackson Memorial Hospital - Miami - Florida (1225033020)","JEWISH HOSPITAL - CINCINNATI - OH (1740635317), JEWISH HOSPITAL - CINCINNATI - OH (1740635317)","Jewish Hospital - Louisville - KY (1073678330), Jewish Hospital - Louisville - KY (1073678330)","JOHN C. LINCOLN NORTH MOUNTAIN HOSPITAL - Phoenix - AZ (1770690695), JOHN C. LINCOLN NORTH MOUNTAIN HOSPITAL - Phoenix - AZ (1770690695)","Johns Hopkins Bayview Medical Center - Baltimore - MD (1790700904), Johns Hopkins Bayview Medical Center - Baltimore - MD (1790700904)","Johns Hopkins Hospital - Baltimore - MD (1215106653), Johns Hopkins Hospital - Baltimore - MD (1215106653)","Kenmore Mercy Hospital - Kenmore - NY (1770598104), Kenmore Mercy Hospital - Kenmore - NY (1770598104)","Kosair Childrens Hospital - Louisville - KY (1982609442), Kosair Childrens Hospital - Louisville - KY (1982609442)","Lawrence Hospital - Bronxville - New York (1134131030), Lawrence Hospital - Bronxville - New York (1134131030)","Lees Summit Medical Center - Lees Summit - MO (1225085871), Lees Summit Medical Center - Lees Summit - MO (1225085871)","Lenox Hill Hospital - New York - New York (1073652434), Lenox Hill Hospital - New York - New York (1073652434)","Lester E Cox Medical Centers - Springfield  - Missouri (1508169764), Lester E Cox Medical Centers - Springfield  - Missouri (1508169764)","Logan Regional - Logan - Utah (1831108497), Logan Regional - Logan - Utah (1831108497)","Long Island Jewish Hospital - New Hyde Park - new York (1801128921), Long Island Jewish Hospital - New Hyde Park - new York (1801128921)","Lynchburg General Hospital - Lynchburg - Virginia (1679677983), Lynchburg General Hospital - Lynchburg - Virginia (1679677983)","Maine Medical Center  - Portland  - Maine  (1811917222), Maine Medical Center  - Portland  - Maine  (1811917222)","Malo Medical Center - Rutherford - NJ (1760757165), Malo Medical Center - Rutherford - NJ (1760757165)","MAYFIELD SPINE SURGERY CENTER - CINCINNATI - OH (117485246), MAYFIELD SPINE SURGERY CENTER - CINCINNATI - OH (117485246)","Mayo Clinic Hospital - Rochester - Rochester - MN (1922074434), Mayo Clinic Hospital - Rochester - Rochester - MN (1922074434)","McKay Dee - Ogden - Utah (1194749580), McKay Dee - Ogden - Utah (1194749580)","Memorial Hermann Katy -  -  (1932152337), Memorial Hermann Katy -  -  (1932152337)","Memorial Hermann Memorial City -  -  (1740233782), Memorial Hermann Memorial City -  -  (1740233782)","Memorial Hermann Northeast -  -  (1295843787), Memorial Hermann Northeast -  -  (1295843787)","Memorial Hermann Southeast -  -  (1730132234), Memorial Hermann Southeast -  -  (1730132234)","Memorial Hermann Sugar Land -  -  (1295788735), Memorial Hermann Sugar Land -  -  (1295788735)","Memorial Hermann TMC -  -  (1982666111), Memorial Hermann TMC -  -  (1982666111)","Memorial Medical Center - Springfield - IL (1255317590), Memorial Medical Center - Springfield - IL (1255317590)","Memorial Regional Medical Center - Mechanicsville  - VA (1912969064), Memorial Regional Medical Center - Mechanicsville  - VA (1912969064)","Memphis VMAC - Memphis - TN (1255381695), Memphis VMAC - Memphis - TN (1255381695)","MERCY HEALTH - ANDERSON HOSPITAL, LLC - CINCINNATI - OH (1235239211)","MERCY HEALTH - FAIRFIELD HOSPITAL, LLC - FAIRFIELD - OH (1467552471)","MERCY HEALTH - WEST HOSPITAL, LLC - CINCINNATI - OH (1912007931)","Mercy Hospital - Springfield - MO (1578504056), Mercy Hospital - Springfield - MO (1578504056)","Mercy Hospital of Buffalo - Buffalo - NY (1164464921), Mercy Hospital of Buffalo - Buffalo - NY (1164464921)","Mercy Hospital Oklahoma City Inc - Oklahoma City - Oklahoma (1184721722), Mercy Hospital Oklahoma City Inc - Oklahoma City - Oklahoma (1184721722)","Mercy Medical Center - Oshkosh - WI  (1023065356), Mercy Medical Center - Oshkosh - WI  (1023065356)","Mercy Medical Center Sioux City - Sioux City - IA (1538199617), Mercy Medical Center Sioux City - Sioux City - IA (1538199617)","Methodist Healthcare Memphis Hospitals - Memphis - TN (1558365890), Methodist Healthcare Memphis Hospitals - Memphis - TN (1558365890)","Methodist Hospital -  -  (1083804876), Methodist Hospital -  -  (1083804876)","Midhudson Regional Hospital - Poughkeepsie - New York (1598181091), Midhudson Regional Hospital - Poughkeepsie - New York (1598181091)","Ministry Door County Memorial - Sturgeon Bay - WI (1093743874), Ministry Door County Memorial - Sturgeon Bay - WI (1093743874)","Mission Hospital - Asheville - NC (1881626075), Mission Hospital - Asheville - NC (1881626075)","Montefiore Medical Center - Yonkers - New York (1053794875), Montefiore Medical Center - Yonkers - New York (1053794875)","Montefiore New Rochelle Hospital - New Rochelle - New York (1497179303), Montefiore New Rochelle Hospital - New Rochelle - New York (1497179303)","Morristown Memorial Hospital - Morristown - NJ (1053384776), Morristown Memorial Hospital - Morristown - NJ (1053384776)","Moses Cone Hospital - Greensboro - NC (1356372064), Moses Cone Hospital - Greensboro - NC (1356372064)","Mount Sinai - New York - New York (1932103413), Mount Sinai - New York - New York (1932103413)","Mountainside Hospital - Glen Ridge - NJ (1710298096), Mountainside Hospital - Glen Ridge - NJ (1710298096)","Naab Road Surgery Center LLC - Indianapolis - IN (1447297684), Naab Road Surgery Center LLC - Indianapolis - IN (1447297684)","New York Presbyterian Weill Cornell Medical Center - New York - NY (1952332801), New York Presbyterian Weill Cornell Medical Center - New York - NY (1952332801)","New York-Presbyterian Columbia University Medical Center - New York - NY (1194832477), New York-Presbyterian Columbia University Medical Center - New York - NY (1194832477)","Niagara Falls Memorial Medical Center -  -  (1285717298), Niagara Falls Memorial Medical Center -  -  (1285717298)","Norman Regional Hospital - Norman - OK (1700882578), Norman Regional Hospital - Norman - OK (1700882578)","North Meridian Surgery Center - Carmel - IN (1710924089), North Meridian Surgery Center - Carmel - IN (1710924089)","NorthBay Medical Center -  -  (1285812024), NorthBay Medical Center -  -  (1285812024)","Northern Westchester Hospital - mount kisco - NY (1912992215), Northern Westchester Hospital - mount kisco - NY (1912992215)","Northshore University Hospital - Manhasset - New York (1366459570), Northshore University Hospital - Manhasset - New York (1366459570)","Norton Brownsboro Hospital - Louisville - KY (1447388335), Norton Brownsboro Hospital - Louisville - KY (1447388335)","Norton Hospital - Louisville - KY (1891799227), Norton Hospital - Louisville - KY (1891799227)","Norton Surburban Hospital - Louisville - KY (1831195908), Norton Surburban Hospital - Louisville - KY (1831195908)","Oklahoma Spine Hospital LLC - Oklahoma City - Oklahoma (1699745893), Oklahoma Spine Hospital LLC - Oklahoma City - Oklahoma (1699745893)","Orlando Regional Medical Center - Orlando - FL (1184709057), Orlando Regional Medical Center - Orlando - FL (1184709057)","Orthopedic and Spine Center of Southern Colorado - Colorado Springs - CO (1942540851), Orthopedic and Spine Center of Southern Colorado - Colorado Springs - CO (1942540851)","OSI-Orthopedic & Sports Institute of the Fox Valley - Appleton - Wi (1780628925), OSI-Orthopedic & Sports Institute of the Fox Valley - Appleton - Wi (1780628925)","OU Medical Center - Oklahoma City - OK (1780631390), OU Medical Center - Oklahoma City - OK (1780631390)","Overlook Medical Center - Summit - NJ (1740254143), Overlook Medical Center - Summit - NJ (1740254143)","PA Brain & Spine Institute -  -  (1003287954), PA Brain & Spine Institute -  -  (1003287954)","Palisades Medical Center - North Bergen - NJ (1093736001), Palisades Medical Center - North Bergen - NJ (1093736001)","Pascack Valley Hospital - Westwood - NJ (1811992480), Pascack Valley Hospital - Westwood - NJ (1811992480)","Penrose Main Hospital - Colorado Springs - CO (1932112125), Penrose Main Hospital - Colorado Springs - CO (1932112125)","Phelps Memorial Hospital - Sleepy Hollow - New York (1720185267), Phelps Memorial Hospital - Sleepy Hollow - New York (1720185267)","Phoenix Spine Surgery Center - Goodyear - AZ (1891175188), Phoenix Spine Surgery Center - Goodyear - AZ (1891175188)","Piedmont Hospital - Atlanta - GA (1962461681), Piedmont Hospital - Atlanta - GA (1962461681)","Piedmont Medical Center - Rock Hill - SC (1457382483), Piedmont Medical Center - Rock Hill - SC (1457382483)","Portsmouth Regional Hospital - Portsmouth - New Hampshire (1518913607), Portsmouth Regional Hospital - Portsmouth - New Hampshire (1518913607)","Poudre Valley Hospital - Fort Collins - CO (1760492714), Poudre Valley Hospital - Fort Collins - CO (1760492714)","Presbyterian Hospital  - Charlotte - NC (1881647204), Presbyterian Hospital  - Charlotte - NC (1881647204)","Princeton Community Hospital - Princeton - WV (1093917643), Princeton Community Hospital - Princeton - WV (1093917643)","Putnam Hospital Center - Carmel - New York (1134133622), Putnam Hospital Center - Carmel - New York (1134133622)","Regional Medical Center at Memphis - Memphis - TN (1144213117), Regional Medical Center at Memphis - Memphis - TN (1144213117)","Regional West Medical Center - Scottsbluff - NE (1639101199), Regional West Medical Center - Scottsbluff - NE (1639101199)","Research Medical Center - Kansas City - MO (1134187842), Research Medical Center - Kansas City - MO (1134187842)","Riverside Methodist Hospital - Columbus - Ohio (1467484972), Riverside Methodist Hospital - Columbus - Ohio (1467484972)","Roper Hospital - Charleston - SC (1962472860), Roper Hospital - Charleston - SC (1962472860)","Roper St Francis Mount Pleasant Hospital - Mount Pleasant  - SC (1255645644), Roper St Francis Mount Pleasant Hospital - Mount Pleasant  - SC (1255645644)","Saint Clares Hospital - Denville - NJ (1699778001), Saint Clares Hospital - Denville - NJ (1699778001)","Saint Francis Hospital - Hartford - Connecticut (1407833486), Saint Francis Hospital - Hartford - Connecticut (1407833486)","Saint Francis Hospital - Memphis - TN (1952326977), Saint Francis Hospital - Memphis - TN (1952326977)","Saint Francis Medical Center - Peoria - IL (1043260482), Saint Francis Medical Center - Peoria - IL (1043260482)","Saint Lukes Hospital of Kansas City - Kansas City - MO (1063494177), Saint Lukes Hospital of Kansas City - Kansas City - MO (1063494177)","Same Day Procedures LLC - Clifton - NJ (1487073417), Same Day Procedures LLC - Clifton - NJ (1487073417)","Sandoval Regional Medical Center - Rio Rancho - New Mexico (1649556200), Sandoval Regional Medical Center - Rio Rancho - New Mexico (1649556200)","Scottsdale Osborn Medical Center -  -  (1811951429), Scottsdale Osborn Medical Center -  -  (1811951429)","Self Regional Healthcare - Greenwood - SC (1023046612), Self Regional Healthcare - Greenwood - SC (1023046612)","Semmes Murphey Surgery Center - Memphis - TN (1447329990), Semmes Murphey Surgery Center - Memphis - TN (1447329990)","Senate Street Surgery Center LLC - Indianapolis - IN (1669559928), Senate Street Surgery Center LLC - Indianapolis - IN (1669559928)","Shands Teaching Hospital & Clinics Inc - Gainesville - FL (1699874248), Shands Teaching Hospital & Clinics Inc - Gainesville - FL (1699874248)","Sister of Charity Hospital - Cheektowaga - New York (1043455199), Sister of Charity Hospital - Cheektowaga - New York (1043455199)","Sisters of Charity Hospital - Buffalo - NY (1790727543), Sisters of Charity Hospital - Buffalo - NY (1790727543)","Skokie Hospital - Skokie - IL (1396790069), Skokie Hospital - Skokie - IL (1396790069)","South Carolina Spine Center - Greenwood - SC (1407887003), South Carolina Spine Center - Greenwood - SC (1407887003)","Spectrum Zeeland - Zeeland - MI (1275536344), Spectrum Zeeland - Zeeland - MI (1275536344)","St  Josephs Regional Medical Center - Paterson - NJ (1811158066), St  Josephs Regional Medical Center - Paterson - NJ (1811158066)","St Agnes Hospital -  -  (1346228541), St Agnes Hospital -  -  (1346228541)","St Barnabas Medical Center - Livingston - NJ (1457544942), St Barnabas Medical Center - Livingston - NJ (1457544942)","St Cloud Hospital - St. Cloud - Minnesota (1215118989), St Cloud Hospital - St. Cloud - Minnesota (1215118989)","ST ELIZABETH MEDICAL CENTER, INC - EDGEWOOD - KY (1467492421), INC - FLORENCE - KY (1154365062), INC - FT THOMAS - KY (1740221795)","St Francis Medical Center North - Colorado Springs - CO (1720211378), St Francis Medical Center North - Colorado Springs - CO (1720211378)","St John Broken Arrow - Broken Arrow - OK (1497988596), St John Broken Arrow - Broken Arrow - OK (1497988596)","St John Medical Center - Tulsa - Oklahoma  (1154417368), St John Medical Center - Tulsa - Oklahoma  (1154417368)","St Josephs Hospital and Medical Ctr - Phoenix - AZ (1982733655), St Josephs Hospital and Medical Ctr - Phoenix - AZ (1982733655)","St Lukes Regional Medical Center - Sioux City - IA (1962594622), St Lukes Regional Medical Center - Sioux City - IA (1962594622)","St Lukes  Hospital in Quakertown - Quakertown - PA (1669405072), St Lukes  Hospital in Quakertown - Quakertown - PA (1669405072)","St Lukes Hospital  in Allentown - Allentown - PA (1548293954), St Lukes Hospital  in Allentown - Allentown - PA (1548293954)","St Lukes Hospital Anderson campus - EASTON - PA (1497050470), St Lukes Hospital Anderson campus - EASTON - PA (1497050470)","St Lukes Hospital in Bethlehem - Bethlehem - PA (1013933175), St Lukes Hospital in Bethlehem - Bethlehem - PA (1013933175)","St Vincent Hospital and Health Care Center Inc - Indianapolis - IN (1306898960), St Vincent Hospital and Health Care Center Inc - Indianapolis - IN (1306898960)","St. Elizabeth Hospital - Appleton - WI (1407803638), St. Elizabeth Hospital - Appleton - WI (1407803638)","St. Francis Hospital - Charleston - WV (1891732889), St. Francis Hospital - Charleston - WV (1891732889)","St. Johns Hospital - Springfield - IL (1518949353), St. Johns Hospital - Springfield - IL (1518949353)","St. Lukes Warren Hospital - Phillipsburg - NJ (1760488266), St. Lukes Warren Hospital - Phillipsburg - NJ (1760488266)","St. Marys Hospital -  -  (1841266194), St. Marys Hospital -  -  (1841266194)","Stamford Hospital - Stamford - Connecticut (1356331425), Stamford Hospital - Stamford - Connecticut (1356331425)","Surgical Specialty Hospital of Arizona - Phoenix - AZ (1902881295), Surgical Specialty Hospital of Arizona - Phoenix - AZ (1902881295)","Swedish Hospital and Medical Center - Cherry Hill - Seattle - Washington (1356496582), Swedish Hospital and Medical Center - Cherry Hill - Seattle - Washington (1356496582)","Tallahassee Memorial Healthcare Inc - Tallahassee - FL (1437177664), Tallahassee Memorial Healthcare Inc - Tallahassee - FL (1437177664)","Tampa General Hospital - Tampa - FL (1235196510), Tampa General Hospital - Tampa - FL (1235196510)","Test hospital -  -  (99999999), Test hospital -  -  (99999999)","Texas Spine and Joint Hospital LTD - Tyler  - Texas (1942292255), Texas Spine and Joint Hospital LTD - Tyler  - Texas (1942292255)","The Milton S. Hershey Medical Center - Hershey - Pennsylvania (1568435477), The Milton S. Hershey Medical Center - Hershey - Pennsylvania (1568435477)","The Orthopedic Specialty Hospital - Murray - Utah (1609886126), The Orthopedic Specialty Hospital - Murray - Utah (1609886126)","The University of Michigan - Ann Arbor - MI (1003878539), The University of Michigan - Ann Arbor - MI (1003878539)","Theda Clark Medical Center - Neenah - WI (1407271992), Theda Clark Medical Center - Neenah - WI (1407271992)","Theda Clark Medical Center - Neenah - WI (1518993880), Theda Clark Medical Center - Neenah - WI (1518993880)","Trinitas Regional Medical Center - Elizabeth - NJ (1306981451), Trinitas Regional Medical Center - Elizabeth - NJ (1306981451)","Trinity Hospital of Augusta - Augusta - GA (1083616213), Trinity Hospital of Augusta - Augusta - GA (1083616213)","Tucson Medical Center - Tucson - AZ (1174512792), Tucson Medical Center - Tucson - AZ (1174512792)","Tufts Medical Center - Boston - MA (1487601787), Tufts Medical Center - Boston - MA (1487601787)","UAB  Hospital - Birmingham - Alabama (1154435824), UAB  Hospital - Birmingham - Alabama (1154435824)","UCLA Medical Center - Los Angeles - CA (1447574538), UCLA Medical Center - Los Angeles - CA (1447574538)","UCLA Santa Monica Medical Center - Santa Monica - CA (1427055839), UCLA Santa Monica Medical Center - Santa Monica - CA (1427055839)","UCSF Medical Center - San Francisco - CA (1689772592), UCSF Medical Center - San Francisco - CA (1689772592)","UNC Hospitals - Chapel Hill  - NC (1932208576), UNC Hospitals - Chapel Hill  - NC (1932208576)","Unity Point Methodist Medical Center - Peoria - Illinois (1164474755), Unity Point Methodist Medical Center - Peoria - Illinois (1164474755)","Unity Point Proctor Hospital - Peoria - Illinois (1033116876), Unity Point Proctor Hospital - Peoria - Illinois (1033116876)","University Health Shreveport - Shreveport - Louisiana (1912909912), University Health Shreveport - Shreveport - Louisiana (1912909912)","University Hospital - Augusta - GA (1588665566), University Hospital - Augusta - GA (1588665566)","University Hospitals Ahuja Medical Center - Beachwood - OH (1710214358), University Hospitals Ahuja Medical Center - Beachwood - OH (1710214358)","University Hospitals Case Medical Center - Cleveland - OH (1043397292), University Hospitals Case Medical Center - Cleveland - OH (1043397292)","University Hospitals Regional Hospital - Richmond Heights - Richmond - OH (1669562864), University Hospitals Regional Hospital - Richmond Heights - Richmond - OH (1669562864)","University of Arkansas for Medical Science - Little Rock - AR (147754956), University of Arkansas for Medical Science - Little Rock - AR (147754956)","UNIVERSITY OF CINCINNATI MEDICAL CENTER - CINCINNATI - OH (1033154026), UNIVERSITY OF CINCINNATI MEDICAL CENTER - CINCINNATI - OH (1033154026)","University of Kansas Hospital - Kansas City - KS (1649259656), University of Kansas Hospital - Kansas City - KS (1649259656)","University of Louisville Hospital - Louisville - KY (1023170693), University of Louisville Hospital - Louisville - KY (1023170693)","University of Miami Hospital - Miami - FL (1396946208), University of Miami Hospital - Miami - FL (1396946208)","University of Minnesota Medical Center Fairview - Minneapolis - MN (1013994359), University of Minnesota Medical Center Fairview - Minneapolis - MN (1013994359)","University of New Mexico - Albuquerque - NM (1669614947), University of New Mexico - Albuquerque - NM (1669614947)","University of Utah Hospital - Salt Lake City - UT (1588656870), University of Utah Hospital - Salt Lake City - UT (1588656870)","UT Southwestern Medical Center at Dallas - Dallas - TX (1417010653), UT Southwestern Medical Center at Dallas - Dallas - TX (1417010653)","Utah Valley Hospital - Provo - Utah (1114025491), Utah Valley Hospital - Provo - Utah (1114025491)","UTMC - Knoxville - TN (1538164090), UTMC - Knoxville - TN (1538164090)","UVA Health Sciences Center - Charlottesville - Va (1780630608), UVA Health Sciences Center - Charlottesville - Va (1780630608)","VALLEY HEALTH SURGERY CENTER LLC - Winchester - Virginia (1104349489), VALLEY HEALTH SURGERY CENTER LLC - Winchester - Virginia (1104349489)","Valley Hospital - Ridgewood - NJ (1013912633), Valley Hospital - Ridgewood - NJ (1013912633)","Vanderbilt University Medical Center - Nashville - TN (1396882205), Vanderbilt University Medical Center - Nashville - TN (1396882205)","Vanguard Surgical Center - Maywood - NJ (1023350907), Vanguard Surgical Center - Maywood - NJ (1023350907)","Vasser Brothers Hospital - poughkeepsie - New York (1740233899), Vasser Brothers Hospital - poughkeepsie - New York (1740233899)","VCU Health System - Richmond - VA (1538324009), VCU Health System - Richmond - VA (1538324009)","Wake Forest University Health Sciences - Winston-Salem - NC (1003803032), Wake Forest University Health Sciences - Winston-Salem - NC (1003803032)","Weill Cornell Medical Center - New York - New York (1235388034), Weill Cornell Medical Center - New York - New York (1235388034)","Wellmont Holston Valley Medical Center - Kingsport - TN (1487690400), Wellmont Holston Valley Medical Center - Kingsport - TN (1487690400)","WellStar Cobb Hospital - Austell - GA (1649248626), WellStar Cobb Hospital - Austell - GA (1649248626)","WellStar Kennestone Hospital - Marietta - GA (1467420448), WellStar Kennestone Hospital - Marietta - GA (1467420448)","WEST CHESTER MEDICAL CENTER - WEST CHESTER - OH (1972746485), WEST CHESTER MEDICAL CENTER - WEST CHESTER - OH (1972746485)","West Valley Hospital - Goodyear - AZ (109379112), West Valley Hospital - Goodyear - AZ (109379112)","Westchester Medical Center -  -  (1932280666), Westchester Medical Center -  -  (1932280666)","Westchester Medical Center - Valhalla - NY (1922088186), Westchester Medical Center - Valhalla - NY (1922088186)","White Plains Hospital - white plains - ny (1447255153), White Plains Hospital - white plains - ny (1447255153)","Winchester Medical Center - Winchester - VA  (1619928017), Winchester Medical Center - Winchester - VA  (1619928017)")
levels(data$qcdr_participant.factor)=c("Yes","No")
levels(data$height_units.factor)=c("in","cm")
levels(data$weight_units.factor)=c("lb","kg")
levels(data$insurance1.factor)=c("Uninsured","Medicare","Medicaid","VA/Government","Private")
levels(data$pt_state.factor)=c("AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")
levels(data$excluded___1.factor)=c("Unchecked","Checked")
levels(data$excluded___2.factor)=c("Unchecked","Checked")
levels(data$excluded___3.factor)=c("Unchecked","Checked")
levels(data$excluded___5.factor)=c("Unchecked","Checked")
levels(data$excluded___6.factor)=c("Unchecked","Checked")
levels(data$excluded___7.factor)=c("Unchecked","Checked")
levels(data$excluded___9.factor)=c("Unchecked","Checked")
levels(data$administrative_exclusions.factor)=c("A duplicate record was created and patient enrolled; all data entry are correctly entered in other record","Patient does not meet baseline inclusion criteria","Unable to collect baseline patient-reported outcomes data","Follow-up or tracking is not possible (e.g., military deployment, moving from area)","Medical records or documentation are not available, cannot be accessed","Previous deformity exclusion - prior to March 1, 2016 (DO NOT USE)","Previous lumbar specific exclusion - prior to May 25, 2016 (DO NOT USE)","Previous general exclusion - prior to May 25, 2016 (DO NOT USE)")
levels(data$patient_enrollment_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$any_major_surgery_in_the_p.factor)=c("Yes","No")
levels(data$major_surgeries___1.factor)=c("Unchecked","Checked")
levels(data$major_surgeries___2.factor)=c("Unchecked","Checked")
levels(data$major_surgeries___3.factor)=c("Unchecked","Checked")
levels(data$major_surgeries___4.factor)=c("Unchecked","Checked")
levels(data$smoking_status.factor)=c("Yes, current every day or almost daily","Yes, current some days or occasional","No, not a current smoker","Undocumented, dont know if currently smoking")
levels(data$smoking_cessation.factor)=c("Counseling by clinician","Referral to smoking cessation program","Both counseling and referral to cessation program","No counseling or referral or information not available")
levels(data$diabetes.factor)=c("Yes","No","Information not available")
levels(data$cad.factor)=c("Yes","No","Information not available")
levels(data$pvd.factor)=c("Yes","No","Information not available")
#levels(data$anxiety.factor)=c("Yes","No","Information not available")
levels(data$anxiety.factor)=c("Yes","No")
#levels(data$depression.factor)=c("Yes","No","Information not available")
levels(data$depression.factor)=c("Yes","No")
levels(data$osteoarthritis.factor)=c("Yes","No","Information not available")
levels(data$chronic_renal_dis.factor)=c("Yes","No","Information not available")
levels(data$copd.factor)=c("Yes","No","Information not available")
levels(data$osteoporosis.factor)=c("Yes","No","Information not available")
levels(data$parkinsons.factor)=c("Yes","No","Information not available")
levels(data$multiple_sclerosis.factor)=c("Yes","No","Information not available")
levels(data$pain.factor)=c("Yes","No","Information not available")
levels(data$weakness.factor)=c("Yes","No","Information not available")
levels(data$numbness.factor)=c("Yes","No","Information not available")
levels(data$predominant_symptom.factor)=c("Pain","Weakness","Numbness/tingling/muscle")
levels(data$dominant_symptom1.factor)=c("Back Dominant","Leg Dominant","Back = Leg")
levels(data$motor_def2.factor)=c("Yes","No")
levels(data$ambulation.factor)=c("Independent","With an assist device","Wheelchair bound (non-ambulatory)")
levels(data$neurogenic_claudication.factor)=c("Yes","No")
#levels(data$symptom_duration2.factor)=c("Less than 3 months","Greater than 3 months","Unknown")
levels(data$symptom_duration2.factor)=c("Less than 3 months","Greater than 3 months")
levels(data$anti_coagulation.factor)=c("Yes","No","Dont know")
levels(data$pain_medication.factor)=c("Yes","No","Dont know")
levels(data$pain_meds___1.factor)=c("Unchecked","Checked")
levels(data$pain_meds___2.factor)=c("Unchecked","Checked")
levels(data$pain_meds___3.factor)=c("Unchecked","Checked")
levels(data$pain_meds___4.factor)=c("Unchecked","Checked")
levels(data$time_on_pain_meds.factor)=c("Two weeks or less","More than 2 weeks")
levels(data$dexa_hip.factor)=c("Yes","No","Record not available")
levels(data$dexa_wrist.factor)=c("Yes","No","Record not available")
levels(data$patient_history_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$base_interview_admin.factor)=c("Interview","Self-administration")
levels(data$ptethnicity.factor)=c("Hispanic or Latino","Not Hispanic or Latino","Prefer not to answer")
levels(data$prace___1.factor)=c("Unchecked","Checked")
levels(data$prace___2.factor)=c("Unchecked","Checked")
levels(data$prace___3.factor)=c("Unchecked","Checked")
levels(data$prace___4.factor)=c("Unchecked","Checked")
levels(data$prace___5.factor)=c("Unchecked","Checked")
levels(data$prace___6.factor)=c("Unchecked","Checked")
levels(data$prace___7.factor)=c("Unchecked","Checked")
levels(data$pt_education_level.factor)=c("Less than High School","High School Diploma or GED","Two-Year College Degree","Four-Year College Degree","Post-College","Prefer not to answer")
levels(data$workers_comp.factor)=c("Yes","No","Unknown")
#levels(data$liability_claim1.factor)=c("Yes","No","Unknown")
levels(data$liability_claim1.factor)=c("Yes","No")
levels(data$employment.factor)=c("Employed and currently working","Employed but not working (on short-term disability or on leave)","Unemployed","Attending School")
levels(data$full_part_time.factor)=c("Full time","Part time")
levels(data$unemployed.factor)=c("On disability","Retired","Homemaker","None of the above")
levels(data$disability_reason.factor)=c("Due to spine problems","Due to other condition")
levels(data$pre_illness_work2.factor)=c("Sedentary: requires the ability to sit up to six hours in an eight hour work day, lift light objects such as files and paperwork frequently during the day, and objects weighing up to 10 pounds occasionally during the day","Light: requires the ability to stand up to 6 hours in an eight hour work day, lift up to 10 pounds frequently and up to 20 pounds occasionally","Medium: requires the ability to stand up to six hours in an eight hour work day, lift up to 25 pounds frequently and 50 pounds occasionally","Heavy: requires the ability to stand up to six hours in an eight hour work day,lift up to 50 pounds frequently and lift more than 50 pounds occasionally")
levels(data$plan_return_work.factor)=c("Yes","No","Unknown")
levels(data$activity_out_home.factor)=c("Yes","No")
levels(data$activity_desc.factor)=c("Sedentary or Light","Moderate","Strenuous")
levels(data$activity_inside_home.factor)=c("Yes","No")
levels(data$activity_desc2.factor)=c("Sedentary or Light","Moderate","Strenuous")
levels(data$patient_base_int_status.factor)=c("Patient contacted, interview completed, patient comprehension was good.","Patient contacted, interview completed, patient comprehension was not good.","Patient contacted, interview declined.","Unable to contact patient.","Patient withdrew IRB consent.","Patient unable to respond","Form self-administered and completed by patient","Unreturned form and unable to contact for follow-up","Deceased","Moved, no phone or address available","In nursing home, unable to participate or respond","In hospital, unable to participate or respond","Declined communication, non-cooperative")
levels(data$patient_baseline_interview_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$asa_grade.factor)=c("1","2","3","4","5")
levels(data$prophylactic_antibiotics.factor)=c("Yes","No")
levels(data$med_reas_documented.factor)=c("Yes","No")
levels(data$antibiotics_stopped.factor)=c("Yes","No")
levels(data$med_res_not_stopped.factor)=c("Yes","No")
levels(data$surgical_approach.factor)=c("Posterior only","Anterior only","Lateral only","Two Stage")
levels(data$first_stage.factor)=c("Posterior","Anterior","Lateral")
levels(data$second_stage.factor)=c("Posterior","Anterior","Lateral")
levels(data$same_or_session.factor)=c("Yes","No")
levels(data$min_invasive_interbody.factor)=c("Yes","No")
levels(data$laminectomy_performed.factor)=c("Yes","No")
levels(data$laminectomy_level.factor)=c("1","2","3","4","5-7","8-11",">11")
levels(data$laminectomy_level_perform___1.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___2.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___3.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___4.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___5.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___6.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___7.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___8.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___9.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___10.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___11.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___12.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___13.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___14.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___15.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___16.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___17.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___18.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform___19.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_performed.factor)=c("Yes","No")
levels(data$arthrodesis_levels.factor)=c("1","2","3","4","5-7","8-11",">11")
levels(data$arthrodesis_level_perform___1.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___2.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___3.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___4.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___5.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___6.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___7.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___8.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___9.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___10.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___11.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___12.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___13.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___14.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___15.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___16.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___17.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___18.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform___19.factor)=c("Unchecked","Checked")
#levels(data$interbody_graft_1.factor)=c("Yes","No","Not applicable","Not Documented")
levels(data$interbody_graft_1.factor)=c("Yes","No")
levels(data$interbody_graft1_type.factor)=c("Cage","Graft","Both")
levels(data$interbody_graft1_struct_type___1.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_struct_type___2.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_struct_type___3.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_struct_type___4.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_struct_type___5.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_biologic_type___1.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_biologic_type___2.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_biologic_type___3.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_biologic_type___4.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_biologic_type___5.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_biologic_type___6.factor)=c("Unchecked","Checked")
levels(data$interbody_graft1_biologic_type___7.factor)=c("Unchecked","Checked")
levels(data$corpectomy.factor)=c("Yes","No")
levels(data$corpectomy_levels.factor)=c("1","2","3","4","5-7","8-11",">11")
levels(data$corpectomy_level_perform___1.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___2.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___3.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___4.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___5.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___6.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___7.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___8.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___9.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___10.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___11.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___12.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___13.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___14.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___15.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___16.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___17.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___18.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform___19.factor)=c("Unchecked","Checked")
levels(data$osteotomy_performed.factor)=c("Yes","No")
levels(data$ostoe_type_spo.factor)=c("Yes","No","Not applicable")
levels(data$osteotomy_levels_spo___1.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___2.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___3.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___4.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___5.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___6.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___7.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___8.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___9.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___10.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___11.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___12.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___13.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___14.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___15.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___16.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___17.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___19.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_spo___20.factor)=c("Unchecked","Checked")
levels(data$osteo_type_pso.factor)=c("Yes","No","Not applicable")
levels(data$osteotomy_levels_pso___1.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___2.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___3.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___4.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___5.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___6.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___7.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___8.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___9.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___10.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___11.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___12.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___13.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___14.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___15.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___16.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___17.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___19.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_pso___20.factor)=c("Unchecked","Checked")
levels(data$osteo_type_vcr.factor)=c("Yes","No","Not applicable")
levels(data$osteotomy_levels_vcr___1.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___2.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___3.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___4.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___5.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___6.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___7.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___8.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___9.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___10.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___11.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___12.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___13.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___14.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___15.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___16.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___17.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___19.factor)=c("Unchecked","Checked")
levels(data$osteotomy_levels_vcr___20.factor)=c("Unchecked","Checked")
levels(data$interbody1_instrum.factor)=c("Yes","No","Not documented")
levels(data$percutaneuos_interbody.factor)=c("Yes","No","Not Documented")
levels(data$pedicle_screw1.factor)=c("Yes","No","Not Documented")
levels(data$other_instrumentation1.factor)=c("Yes","No","Not Documented")
levels(data$min_invasive_interbod2.factor)=c("Yes","No")
levels(data$laminectomy_performed2.factor)=c("Yes","No")
levels(data$laminectomy_level2.factor)=c("1","2","3","4","5-7","8-11",">11")
levels(data$laminectomy_level_perform2___1.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___2.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___3.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___4.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___5.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___6.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___7.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___8.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___9.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___10.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___11.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___12.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___13.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___14.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___15.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___16.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___17.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___19.factor)=c("Unchecked","Checked")
levels(data$laminectomy_level_perform2___20.factor)=c("Unchecked","Checked")
levels(data$arthrodesis2_performed.factor)=c("Yes","No")
levels(data$arthrodesis2_levels.factor)=c("1","2","3","4","5-7","8-11",">11")
levels(data$arthrodesis_level_perform2___1.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___2.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___3.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___4.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___5.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___6.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___7.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___8.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___9.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___10.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___11.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___12.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___13.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___14.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___15.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___16.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___17.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___19.factor)=c("Unchecked","Checked")
levels(data$arthrodesis_level_perform2___20.factor)=c("Unchecked","Checked")
levels(data$interbody_graft_2.factor)=c("Yes","No")
levels(data$interbody_graft2_type.factor)=c("Cage","Graft","Both")
levels(data$interbody_graft2_struct_type___1.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_struct_type___2.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_struct_type___3.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_struct_type___4.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_struct_type___5.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_biol_type___1.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_biol_type___2.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_biol_type___3.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_biol_type___4.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_biol_type___5.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_biol_type___6.factor)=c("Unchecked","Checked")
levels(data$interbody_graft2_biol_type___7.factor)=c("Unchecked","Checked")
levels(data$corpectomy2_performed.factor)=c("Yes","No")
levels(data$corpectomy2_levels.factor)=c("1","2","3","4","5-7","8-11",">11")
levels(data$corpectomy_level_perform2___1.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___2.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___3.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___4.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___5.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___6.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___7.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___8.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___9.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___10.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___11.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___12.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___13.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___14.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___15.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___16.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___17.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___18.factor)=c("Unchecked","Checked")
levels(data$corpectomy_level_perform2___19.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_performed.factor)=c("Yes","No")
levels(data$osteo2_type_spo.factor)=c("Yes","No","Not applicable")
levels(data$osteotomy2_levels_spo___1.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___2.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___3.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___4.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___5.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___6.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___7.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___8.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___9.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___10.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___11.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___12.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___13.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___14.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___15.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___16.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___17.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___19.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_spo___20.factor)=c("Unchecked","Checked")
levels(data$osteo2_type_pso.factor)=c("Yes","No","Not applicable")
levels(data$osteotomy2_levels_pso___1.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___2.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___3.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___4.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___5.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___6.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___7.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___8.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___9.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___10.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___11.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___12.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___13.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___14.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___15.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___16.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___17.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___19.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_pso___20.factor)=c("Unchecked","Checked")
levels(data$osteo2_type_vcr.factor)=c("Yes","No","Not applicable")
levels(data$osteotomy2_levels_vcr___1.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___2.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___3.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___4.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___5.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___6.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___7.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___8.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___9.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___10.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___11.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___12.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___13.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___14.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___15.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___16.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___17.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___19.factor)=c("Unchecked","Checked")
levels(data$osteotomy2_levels_vcr___20.factor)=c("Unchecked","Checked")
levels(data$interbody2_instrum.factor)=c("Yes","No","Not Applicable","Not Documented")
levels(data$percutaneuos_interbod2.factor)=c("Yes","No","Not Documented")
levels(data$pedicle_screw2.factor)=c("Yes","No","Not Documented")
levels(data$dynamic_stabilization2.factor)=c("Yes","No","Not Documented")
levels(data$other_instrumentation2.factor)=c("Yes","No","Not Documented")
levels(data$est_blood_loss.factor)=c("Minimal","Not documented","Documented ccs")
levels(data$est_blood_loss2.factor)=c("Minimal","Not documented","Documented ccs")
levels(data$surgery_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$incl_excl_criteria.factor)=c("Yes","No")
levels(data$diagnosis_chart_abstract.factor)=c("Yes","No")
levels(data$procedure_chart_abstract.factor)=c("Yes","No")
levels(data$exclusion_chart_abstract.factor)=c("Yes","No")
levels(data$type_exclusion.factor)=c("General","Lumbar specific","Deformity specific","Administrative")
levels(data$excluded_30day___1.factor)=c("Unchecked","Checked")
levels(data$excluded_30day___2.factor)=c("Unchecked","Checked")
levels(data$excluded_30day___3.factor)=c("Unchecked","Checked")
levels(data$excluded_30day___5.factor)=c("Unchecked","Checked")
levels(data$excluded_30day___6.factor)=c("Unchecked","Checked")
levels(data$excluded_30day___7.factor)=c("Unchecked","Checked")
levels(data$excluded_30day___9.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___1.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___7.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___3.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___8.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___11.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___12.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___13.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___14.factor)=c("Unchecked","Checked")
levels(data$excl_specific_lumbar_dx_30day___15.factor)=c("Unchecked","Checked")
levels(data$six_cycle_30day_excl.factor)=c("6-cycle accrual site")
levels(data$deformity_exclusion_30day___1.factor)=c("Unchecked","Checked")
levels(data$deformity_exclusion_30day___2.factor)=c("Unchecked","Checked")
levels(data$deformity_exclusion_30day___3.factor)=c("Unchecked","Checked")
levels(data$deformity_exclusion_30day___4.factor)=c("Unchecked","Checked")
levels(data$deformity_exclusion_30day___5.factor)=c("Unchecked","Checked")
levels(data$administrative_exclusions_30day.factor)=c("A duplicate record was created and patient enrolled. All data entry is correctly entered in other record","Patient does not meet baseline inclusion criteria","Unable to collect baseline patient-reported outcome data","Follow-up or tracking is not possible (e.g., military deployment, moving from area)","Medical records or documentation are not available, cannot be accessed","Previous deformity exclusion - prior to March 1, 2016","Previous general exclusion - prior to May 25, 2016")
levels(data$place_discharged_to.factor)=c("Home routine","Home with home healthcare services","Post-acute or non-acute care setting","Transferred to another acute care facility","Against Medical Advice, or AMA","Died in hospital","Discharged alive, destination unknown")
levels(data$please_specify.factor)=c("Skilled nursing facility","Intermediate/rehabilitation care facility","Another type of facility")
levels(data$re_admitted_within_30_days.factor)=c("Yes","No")
levels(data$reason_for_readmit_30days___1.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___2.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___3.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___4.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___5.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___6.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___7.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___8.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___11.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___12.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_30days___10.factor)=c("Unchecked","Checked")
levels(data$readmit_3months.factor)=c("Yes","No")
levels(data$reason_for_readmit_3mnth___1.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___2.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___3.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___4.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___5.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___6.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___7.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___8.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___11.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___12.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___13.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___14.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___15.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___16.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___17.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___18.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___19.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___20.factor)=c("Unchecked","Checked")
levels(data$reason_for_readmit_3mnth___10.factor)=c("Unchecked","Checked")
levels(data$returned_to_or_with_30_day.factor)=c("Yes","No")
levels(data$reason_for_return_to_or___1.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___2.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___3.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___4.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___5.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___6.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___7.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___8.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___11.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___12.factor)=c("Unchecked","Checked")
levels(data$reason_for_return_to_or___10.factor)=c("Unchecked","Checked")
levels(data$patient_died_within_30_day.factor)=c("Yes","No")
levels(data$dvt_30day.factor)=c("Yes","No")
levels(data$dvt_timing.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$pulmonary_embolism_30day.factor)=c("Yes","No")
levels(data$pe_timing.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$new_neuro_deficit.factor)=c("Yes","No")
levels(data$new_neuro_def_timing.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$mi_30day.factor)=c("Yes","No")
levels(data$mi_timing.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$uti_30days.factor)=c("Yes","No")
levels(data$uti_timimg.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$surgical_site_infect_30day.factor)=c("Yes","No")
levels(data$ssi_timing.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$tx_ssi.factor)=c("Intravenous antibiotics (IV) only","Surgical incision and drainage with intravenous(IV) antibiotics")
levels(data$hematoma.factor)=c("Yes","No")
levels(data$hematoma_timing.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$tx_hematoma.factor)=c("Requiring surgery","Requiring observation")
levels(data$cva.factor)=c("Yes","No")
levels(data$cva_timing.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$incidental_durotomy.factor)=c("Yes","No")
levels(data$inc_durotomy_def_timing.factor)=c("During hospital stay within 30-days after surgery","Dont know")
levels(data$pneumonia.factor)=c("Yes","No")
levels(data$pneumonia_timing.factor)=c("During hospital stay within 30-days after surgery","Post-discharge, within 30-days after surgery","Dont know")
levels(data$thirty_day_morbidity_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$event.factor)=c("3-month follow-up","12-month follow-up","24-month follow-up","36-month follow-up","48-month follow-up","60-month follow-up")
levels(data$interview_admin.factor)=c("Interview","Self-administration")
levels(data$pt_satisfaction_index.factor)=c("Surgery met my expectations.","I did not improve as much as I had hoped but I would undergo the same operation for the same results.","Surgery helped but I would not undergo the same operation for the same results.","I am the same or worse as compared to before surgery.")
#levels(data$return_to_work.factor)=c("Yes","No","Not applicable")
levels(data$return_to_work.factor)=c("Yes","No")
levels(data$part_time_or_full_time.factor)=c("Part-time","Full-time")
levels(data$return_to_activities.factor)=c("Yes","No")
levels(data$readmit_3mth_surg.factor)=c("Yes","No")
levels(data$reason_readmit_3mnth___1.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___2.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___3.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___4.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___5.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___6.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___7.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___8.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___11.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___14.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___16.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___17.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___9.factor)=c("Unchecked","Checked")
levels(data$reason_readmit_3mnth___10.factor)=c("Unchecked","Checked")
levels(data$revision_surg_3mths.factor)=c("Yes","No")
levels(data$revision_surg_12mths.factor)=c("Yes","No")
levels(data$revision_surg_12mths2.factor)=c("Yes","No")
levels(data$revision_surg_24mths.factor)=c("Yes","No")
levels(data$reasonrevision___1.factor)=c("Unchecked","Checked")
levels(data$reasonrevision___2.factor)=c("Unchecked","Checked")
levels(data$reasonrevision___3.factor)=c("Unchecked","Checked")
levels(data$reasonrevision___4.factor)=c("Unchecked","Checked")
levels(data$reasonrevision___5.factor)=c("Unchecked","Checked")
levels(data$reasonrevision___6.factor)=c("Unchecked","Checked")
levels(data$reasonrevision___7.factor)=c("Unchecked","Checked")
levels(data$same_level_fusion.factor)=c("Fusion","Non-fusion")
levels(data$rx_physical_therapy.factor)=c("Yes","No","Dont remember")
levels(data$receive_phys_therapy.factor)=c("Yes","No","Dont remember")
levels(data$patient_interview_status.factor)=c("Patient contacted, interview completed, patient comprehension was good","Patient contacted, interview completed, patient comprehension was not good","Patient contacted, interview declined","Unable to contact patient","Patient withdrew IRB consent","Patient unable to respond","Form self-administered and completed by patient","Unreturned form and unable to contact for follow-up","Deceased","Moved, no phone or address available","In nursing home, unable to participate or respond","In hospital, unable to participate or respond","Declined communication, noncooperative","Unable to locate patient, no answer")
levels(data$admin_reconcile.factor)=c("No Data Coordinator, position vacant during follow-up period","Data Coordinator on vacation or leave, absent during follow-up period","Did not track, lost track of follow-up, lost opportunity","Other")
levels(data$patient_interview_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$vas_administration.factor)=c("Interview","Self-administration")
levels(data$pt_int_pain_meds.factor)=c("Yes","No")
levels(data$back_pain_meds.factor)=c("Spine","Other (not due to spine problems)")
levels(data$narc_opiod_med.factor)=c("Yes","No","Dont know")
levels(data$time_on_pain_med.factor)=c("Two weeks or less","More than 2 weeks")
levels(data$back_pain_vas.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$leg_pain_vas1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$back_pain_same_problem.factor)=c("Yes, same or nearly the same problem","No, Different")
levels(data$back_pain_same_location.factor)=c("Yes, same or about the same location","Different, above area of surgery","Different, below area of surgery")
levels(data$back_pain_reason.factor)=c("Re-injury, strain from work/exercise","New injury (accident, trauma, fall)","Same problem, ongoing, re-occurring problem")
levels(data$leg_pain_same_problem.factor)=c("Yes, same or nearly the same problem","No, Different")
levels(data$leg_pain_reason.factor)=c("Re-injury, strain from work/exercise","New injury(accident, trauma, fall)","Same Problem, ongoing, re-occurring problem")
levels(data$odi_administration.factor)=c("Interview","Self-administration")
levels(data$for_lang_qol.factor)=c("English","Spanish","Other")
levels(data$odi_score_pain_intensity_int.factor)=c("No pain","Very mild pain","Moderate pain","Fairly severe pain","Very severe pain","The worst imaginable pain")
levels(data$odi_score_personal_care_int.factor)=c("I can care for myself without pain","I can care for myself, but it is very painful","I can care for myself, but it is very painful and I must move slowly and carefully","I need some help but I can mostly care for myself","I need help every day with most of my personal care","I cannot tolerate these activities and I stay in bed")
levels(data$odi_score_lifting_int.factor)=c("I can lift heavy weights without pain","I can lift heavy weights, but it is painful","I cannot lift heavy weights off the floor due to pain, but can lift when items are placed on a table or counter","I cannot lift heavy weights due to pain, but can lift medium weight items from a table or counter","I can lift only very light weights","I cannot lift anything")
levels(data$odi_score_walking_int.factor)=c("Pain does not limit my ability to walk","Pain prevents me from walking more than a mile (about 16 blocks)","Pain prevents me from walking more than a quarter of a mile (about 4 blocks)","Pain prevents me from walking more than 100 yards (football field)","I can only walk using a cane or crutches","I spend most of my time in bed and I am unable to walk")
levels(data$odi_score_sitting_int.factor)=c("Pain does not limit my ability to sit","I can sit in my favorite chair without pain","Pain prevents me from sitting for more than 1 hour","Pain prevents me from sitting for more than 30min","Pain prevents me from sitting for more than 10min","Pain prevents me from sitting")
levels(data$odi_score_standing_int.factor)=c("Standing does not cause extra pain","I can stand as along as I want, but it does cause extra pain","Pain prevents me from standing for more than 1 hour","Pain prevents me from standing for more than 30 minutes","Pain prevents me from standing for more than 10 minutes","Pain prevents me from standing")
levels(data$odi_score_sleeping_int.factor)=c("Never","Occasionally","Pain limits me to less than 6 hours of sleep","Pain limits me to less than 4 hours of sleep","Pain limits me to less than 2 hours of sleep","Pain prevents me from sleeping")
levels(data$odi_score_sex_life_int.factor)=c("Normal and causes no extra pain","Normal, but causes some extra pain","Nearly normal, but is very painful","Severely restricted by pain","Nearly absent because of pain","Not sexually active because of pain")
levels(data$odi_score_social_life_int.factor)=c("Normal and causes no extra pain","Normal, but causes some extra pain","Pain limits my social life, but I still try to go out","Pain limits my social life I do not go out as often as Id like","I do not go out Pain keeps me at home","I have no social life because of pain")
levels(data$odi_score_travelling_int.factor)=c("I can travel without pain","I can travel but it does cause increased pain","I can tolerate travel over 2 hrs, but the pain is bad","Pain restricts my travel to less than one hour","Pain restricts my travel to less than 30 minutes","Pain prevents all my travel except to receive medical care")
levels(data$odi_pain_intensity_self.factor)=c("I have no pain at the moment.","The pain is very mild at the moment.","The pain is moderate at the moment.","The pain is fairly severe at the moment.","The pain is very severe at the moment.","The pain is the worst imaginable at the moment.")
levels(data$odi_personal_care_self.factor)=c("I can look after myself normally without causing extra pain.","I can look after myself normally but it is very painful.","It is painful to look after myslef and I am slow and careful.","I need some help but manage most of my personal care.","I need help every day in most aspects of self care.","I do not get dressed, was with difficulty and stay in bed.")
levels(data$odi_lifting_self.factor)=c("I can lift heavy weights without extra pain.","I can lift heavy weights but it gives extra pain.","Pain prevents me from lifting heavy weights off the floor but I can manage if they are conveniently positioned, e.g. on a table.","Pain prevents me from lifting heavy weights but I can manage light to medium weights if they are conveniently positioned.","I can lift only very light weights.","I cannot lift or carry anything at all.")
levels(data$odi_walking_self.factor)=c("Pain does not prevent me walking any distance.","Pain prevents me walking more than one mile.","Pain prevents me walking more than a quarter of a mile.","Pain prevents me walking more than 100 yards.","I can only walk using a stick or crutches.","I am in bed most of the time and have to crawl to the toilet.")
levels(data$odi_sitting_self.factor)=c("I can sit in any chair as long as I like.","I can sit in my favorite chair as long as I like.","Pain prevents me from sitting for more than 1 hour.","Pain prevents me from sitting for more than half an hour.","Pain prevents me from sitting for more than 10 minutes.","Pain prevents me from sitting at all.")
levels(data$odi_standing_self.factor)=c("I can stand as long as I want without extra pain.","I can stand as long as I want but it gives me extra pain.","Pain prevents me from standing for more than 1 hour.","Pain prevents me from standing for more than half an hour.","Pain prevents me from standing for more than 10 minutes.","Pain prevents me from standing at all.")
levels(data$odi_sleeping_self.factor)=c("My sleep is never disturbed by pain.","My sleep is occasionally disturbed by pain.","Because of pain I have less than 6 hours sleep.","Because of pain I have less than 4 hours sleep.","Because of pain I have less than 2 hours sleep.","Pain prevents me from sleeping at all.")
levels(data$odi_sex_life_self.factor)=c("My sex life is normal and causes no extra pain.","My sex life is normal but causes some extra pain.","My sex life is nearly normal but is very painful.","My sex life is severely restricted by pain.","My sex life is nearly absent because of pain.","Pain prevents any sex life at all.")
levels(data$odi_social_life_self.factor)=c("My social life is normal and causes me no extra pain.","My social life is normal but increases the degree of pain.","Pain has no significant effect on my social life apart from limiting my more energetic interests, e.g. sport, etc.","Pain has restricted my social life and I do not go out as often.","Pain has restricted social life to my home.","I have no social life because of pain.")
levels(data$odi_travelling_self.factor)=c("I can travel anywhere without pain.","I can travel anywhere but it gives extra pain.","Pain is bad but I manage journeys over two hours.","Pain restricts me to journeys of less than one hour.","Pain restricts me to short necessary journeys under 30 minutes.","Pain prevents me from travelling except to receive treatment.")
levels(data$eq_5d_administration.factor)=c("Interview","Self-administration")
levels(data$for_lang_eq5d.factor)=c("English","Spanish","Other")
levels(data$mobility_int.factor)=c("No problems in walking about?","Some problems in walking about?","You are confined to bed?")
levels(data$self_care_int.factor)=c("No problems with self-care?","Some problems washing or dressing myself?","You are unable to wash or dress yourself?")
levels(data$usual_activities_int.factor)=c("No problems with performing your usual activities?","Some problems with performing your usual activities?","You are unable to perform your usual activities?")
levels(data$pain_discomfort_int.factor)=c("No pain or discomfort","Moderate pain or discomfort","Extreme pain or discomfort")
levels(data$anxiety_depression_int.factor)=c("Not anxious or depressed?","Moderately anxious or depressed?","Extremely anxious or depressed?")
levels(data$mobility_self_admin.factor)=c("I have no problems in walking about","I have some problems in walking about","I am confined to bed")
levels(data$self_care_self_admin.factor)=c("I have no problems with self-care","I have some problems washing or dressing myself","I am unable to wash or dress myself")
levels(data$usual_activities_self_admin.factor)=c("I have no problems with performing my usual activities","I have some problems with performing my usual activities","I am unable to perform my usual activities")
levels(data$pain_self_admin_discomfort.factor)=c("I have no pain or discomfort","I have moderate pain or discomfort","I have extreme pain or discomfort")
levels(data$anxiety_self_admin_depression.factor)=c("I am not anxious or depressed","I am moderately anxious or depressed","I am extremely anxious or depressed")
levels(data$questionnaires_complete.factor)=c("Incomplete","Unverified","Complete")



####################################################################################################
#
# Variables 
#
####################################################################################################

#ID
data$ID <- cumsum(!duplicated(data[1]))


#Race
data$race <- rep(NA,length(data$prace___1))
data$race[which(data$prace___1==1)] <- 1
data$race[which(data$prace___2==1)] <- 2
data$race[which(data$prace___3==1)] <- 3
data$race[which(data$prace___4==1)] <- 4
data$race[which(data$prace___5==1)] <- 5
data$race[which(data$prace___6==1)] <- 6
data$race[which(data$prace___7==1)] <- 7
data$race <- factor(data$race,
             levels=c("1","2","3","4","5","6","7"),
             labels=c("American Indian or Alaska Native", "Asian", "Black or African American",
                      "Native Hawaiian or Other Pacific Islander", "White", "Other", 
                      "Prefer not to answer"))
table(data$race)

#Medication
data$pain_meds <- rep(NA,length(data$pain_meds___1))
data$pain_meds[which(data$pain_meds___1==1)] <- 1
data$pain_meds[which(data$pain_meds___2==1)] <- 2
data$pain_meds[which(data$pain_meds___3==1)] <- 3
data$pain_meds[which(data$pain_meds___4==1)] <- 4
data$pain_meds <- factor(data$pain_meds,
                    levels=c("1","2","3","4"),
                    labels=c("Opioid/Narcotic", "Epidural/IV (within last 3 months)", "NSAID",
                             "Other"))
table(data$pain_meds)



#Numbering visits per patient
data$visit <- ave(rep(1,dim(data)[1]), data$ID, FUN = seq_along)




####################################################################################################
#
# DATA
#
####################################################################################################

# data_final <- data.frame(data$age_entered,data$race,data$ptethnicity, data$pt_education_level,
#                    data$workers_comp, data$liability_claim1, data$employment, data$full_part_time, data$activity_out_home,
#                    data$unemployed, data$activity_desc, data$activity_inside_home, data$activity_desc2,
#                    data$principal_spine_diagnosis___3, data$principal_spine_diagnosis___4, data$central_canal_compress,
#                    data$lateral_recess, data$surgeon, data$height_units, data$pt_height_in, data$pt_height_cm,
#                    data$weight_units, data$pt_wt_lb, data$pt_wt_kg, data$anxiety, data$depression,
#                    data$predominant_symptom, data$dominant_symptom1, data$motor_def2, data$ambulation,
#                    data$neurogenic_claudication, data$symptom_duration2, data$pain_medication, data$pain_meds,data$time_on_pain_meds, data$time_on_pain_meds,
#                    data$laminectomy_performed, data$laminectomy_level, data$arthrodesis_performed, data$arthrodesis_levels,
#                    data$interbody_graft_1, data$interbody_graft1_type, data$osteotomy_performed, data$ostoe_type_spo,
#                    data$interbody1_instrum, data$percutaneuos_interbody, data$pedicle_screw1, data$rx_physical_therapy,
#                    data$receive_phys_therapy, data$pt_satisfaction_index, data$return_to_work, data$return_to_activities,
#                    data$pt_int_pain_meds, data$narc_opiod_med, data$back_pain_vas, data$leg_pain_vas1, data$total_odi_sum_score_int,
#                    data$total_odi_sum_score_self, data$eq_vas_int, data$eq_vas_self)

#View(data.frame(data$pt_study_id,data$visit,data$total_odi_sum_score_int,data$total_odi_sum_score_self))
