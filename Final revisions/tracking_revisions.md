# Final Revisions from External defence

## Suggestions from the External

- [X] {JD} you say that the time it takes all nuclei to relax back to M0 is T1. This is incorrect. 
	- Fixed in commit baf4ecc

- [X] {JD} there is reference missing on pdf page 34
	- Fixed by recompiling document ed89419

- [X] {JD} When using RARE, can you put in the parameters so people can reproduce this (echo times, number of echoes or rare factor, average echo time). I’m confused about the T1, RARE, FLASH use etc on page 17 of the pdf in methods. It seems to talk about RARE and qualitative T1 then launches into T1 calibration. This is just a sentence flow problem as I think you switching to FLASH.
	- Fixed in e72f501; added details about RARE scans, fixed sentence flow to make it clear the separation between qualitative scans and quantitative mapping

- [X] {JD} Make sure all abbreviations and terms in figures are defined in the figure legend, even if the abbreviation is normal in your field. For instance, Fig 2.2, the words violation and LCL.
	- Fixed in 3a56e53

- [X] {JD} On pdf page 46 in methods, it says the relaxivity units are mM-11s-11. What is the extra 1? It looks like a formatting error.
	- Fixed in 37c610f

- [X] {JD} How do you know DiOC7 does not get beyond endothelial cells? If it does, it is not as good a vessel marker.
	- Fixed in 57758d2; added a reference also. Given enough time, carbocyanine freely diffuses throughout the tumour tissue but with a limited exposure time (less than 5 minutes), it serves as a good vessel perfusion marker \cite{Trotter:1989cs}.

- [X] {JD} I am very much not a fan of paragraphs that approach or exceed one page. This makes the text very hard to read. This was more of an issue in the early chapters.
	- Agreed. Fixed in 6726c42

- [X] {JD} Sentences that end paragraphs should often provide some summary, conclusion or linkage to the next paragraph. Sentences that start a paragraph should also provide some overview of what the reader expects. Some of the writing lacks this. I note it in Chapter 2. For instance, here is the first sentence of one paragraph. “Without this information, analysis may be restricted to regions of tissues at the tumour margins where hot spots of vascularization are observed histologically,
and tissue is assumed to be viable in the MR image [56, 63].” This is a reasonable sentence but not a good first sentence in a paragraph.
	- Fixed throughout in 6726c42; This was a matter of poorly placed paragraph breaks, and bad sentence flow. 

- [X] {JD} In chapter 3 it says it will “use HPG-GdF to investigate the distribution of Trastuzumab.” This isn’t technically correct. It is looking at both but you are not using the contrast agent to detect Trastuzumab distribution.
	- Fixed in 3d23a46; clarified chapter title to make it clear the agent is being used to detect the drug directly.

- [X] {JD} It was unclear how many animals were in Chapter 5. If you only present data on 2-5 why split chapter 5 and 6. It was unclear how well component 4 related to O2 between different tumors and how variable the data were.
	- Addressed in 21c211a.

- [x] {JD} Sometimes figure calls are not in the same format—ie capitalized or not.
	- Fixed in 413faaf, d7ed72b, f793d12

- [X] {JD} As you are changing oxygen as a way of assessing tumors using the deoxyhemoglobin as a contrast agent, you might also note one of the first papers to do this. It also has useful information on problems of applying multiecho gradient echo in this experiment. Changes in oxygenation of intracranial tumors with carbogen: A BOLD MRI and EPR oximetry study Jeff F. Dunn et al. 2002 https://doi.org/10.1002/jmri.10192
	- Fixed in 2a6b4b1
	- Added this reference in oemri chapter 1 and in the future work section

- [X] {RR} 4 instances of "Appendix" appear but there is no appendix
	- Fixed in 18af069

- [X] {RR} why time resolution 2.24s: (is it always that? 2.4 on p 31)
	- This was a typo, temporal resolution is 2.24s fixed in e72f501

- [X] {VS} how robust are your result? etc ; if it’s a physicist thesis it needs more rigor.
	- Showed all 91 extractions and scored them based on quality.
	- Addressed in 21c211a.

- [X] {RR} Need period at the end of equation 5.2
	- Fixed in 2f1cd12.

- [X] {RR} missing quotation marks in section 8.2, first sentence
	- Fixed in 35d8ca0.

- [X] {XX} In Chapter 3 you note that vessel function doesn’t relate well to trastuzumab distribution. You then conclude that “our data suggest that the tumor microenvironment and tissue- and vessel-level barriers to drug distribution could effectively limit access of drug”. Did your data in any way support this conclusion or is this conclusion just what you expected to find?
	- Addressed in 68301fb.

## High Effort

- [ ] {VS} write more like physicists, very little {-----?}; 

- [ ] revise contributions to add my fitting/modeling of extended tofts model

- [ ] {TS} why ICA not fourier transform? 
	Ans was -> signal to noise. TS not buying that
	SAR: you could insert a general comparison of sensitivity and SNR in Fourier Transform to rationalize why ICA is better. This can appear in a discussion.
	
- [ ] {RR} ICA part: operator chooses number of components? how do you make the decision around n? [why have variable components at all?] SAR: I think it would make sense to formalize the process of choosing the numbers of components. This is an oft-raised points and needs addressing.

## Moderate Effort

- [X] {XX} In chapter 4, you note that HPG-GdF was reduced post treatment. One of your conclusions is that large molecular weight contrast agents are useful in such studies. Since you did not also include a study with a lower molecular weight agent, can you conclude that the large agent was specifically a good agent?
	- This was already adequately addressed in the first paragraph of the discussion, but I have also added a sentence linking back to previous work from chapter 2.
	- Addressed in 772b98b

- [ ] {JD} The introduction to Chapter 2, or somewhere, should have some comments about the relevance of the tumor model. Models with implanted tumor cells, on the whole, do not have a vasculature that models the human version of the cancer. The vessels usually grow faster, are more chaotic in structure, leakier and have no intrinsic blood flow regulation. They can be used to study methods of assessing leakiness, but are very poor when it comes to studying blood flow modifiers. They are of variable relevance when studying drugs that impact permeability. This should be noted in a thesis.

- [X] {JD} In chapter 6 you validated the dOE-MRI against pimonidazole. I found the visual relationships very unconvincing if you are trying to say that there is low pimonidazole where there is high response to inspired O2. Yet you say that we have validated the dOE-MRI by comparing oxygenation maps with pimonidazole staining. Is there any quantitate way you can make the comparison that could involve statistics or an indication of variability?
	- Addressed in 138b953
	- This is a limtation of the amount of information that is presented in these dOE-MRI maps. We are working on ways to make the comparison more palatable and require less mental gymnastics. We also did tumour slice means but this approach is flawed (as discussed in the text).
	- In the discussion I have outlined a proposed experiment and analysis pipeline to acquire the data to do the quantitative validation you request.

- [X] {JD} In chapter 7, you study how dOE-MRI changes with VEGF ablation-induced changes to oxygenation in SCCVII tumors. Differences in response to O2 were observed between treatment groups and tumor injection locations. These differences are described as changes in oxygenation. The pimonidazole shows changes in oxygenation but the maps of dOE-MRI are not usually very close. Can you say that changes in contrast agent really correlate with changes in oxygenation.
	- Addressed in aa28e9b.

- [ ] {RR} describe and defend MR sequences: 2d spoiled GE, not in the thesis

- [X] turn table into a figure in HPG chapter
	- Not going to do this as it doesn't make sense. Only one parameter (aPS) will actually show a difference. Made this more prominent in the discussion (9e3b3b4)

- [ ] {VS} more method development; 
	- Partially addressed in 21c211a for OE-MRI

- [X] {JD/XX} As you are changing oxygen and deoxyhemoglobin content at the same time while measuring T1w signal, and both can change T1, can you note how each would change T1 and how you can conclude that the changes you see are due to deoxyhemoglobin?
	- We hypothesize that the changes we see are due to deoxyhemoglobin; further development of the technique to do interleaved T1 and T2* is required to confirm this.
	- Added a sentence about how T1/T2/T2* changes upon conversion of dHb to Hb
	- Addressed in d41965b


## Low effort

- [X] {JD} It is noted early in the discussion of Chapter 2 that vascular agents need to be the right size to distribute within an optimal period of time. Given that this agent was tested in an animal tumor, what is the relationship between vessel morphometrics and “leakage pore size” in the animal tumor vs a human tumor? Shouldn’t this be discussed before saying it is a good agent?
	- Resolve by saying this is for drug and method development not translating to humans
	- Addressed in 64f13c5 and 6b08d5b

- [X] add sentences confirming HPG was better than Gd
	- Addressed in 9e3b3b4

- [X] {JD} The ICA analysis coupled with the oxygen pulse and the sensitive T1 mapping provides a novel, interesting and relevant new method for monitoring tumors. You noted that ‘cycling’ hypoxia was hard to detect. Since these tumors are unlikely to have vessel flow regulation, you could reduce blood pressure, which will reduce the flow to the tumor and should increase the hypoxic regions. This is just a thought, it is not a request to add this to your thesis.
	- Resolved by adding to future work
	- Addressed in bf4e121

- [X] {RR} switching to OEMRI: summarize novel contribution
	- Addressed in 4a71c12

- [X] {RR} confused by how many switches: in one place you say one works, in another it doesn't
	- Addressed in 0d94872