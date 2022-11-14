# Project Title: Hate Crimes in the U.S.

#### code name: Keep Peace

------------------------------------------------------------------------

**Authors**\
Jiyoon Kim \| jiyoon99\@uw.edu\
Qiqi Liang \| [qiqi2\@uw.edu](mailto:qiqi2@uw.edu){.email}\
Michael Cinnamon \| [cinnammj\@uw.edu](mailto:cinnammj@uw.edu){.email}\
\
**Affiliation**\
INFO-201: Foundational Skills For Data Science - The Information School - University of Washington\
\
**Date**: Autumn 2022\
\
**Abstract**\
We are concerned with the increase hate crime in the U.S. This is an important concern to address because no one should feel unsafe for who they are, regardless of race/ethnicity, gender, sexual orientation, or other factors. To address this concern, we plan to examine datasets from the FBI by state, exploring the locations, types of minorities affected by oppression, and other categories.\
\
**Keywords**: social justice; hate crime in the U.S.; oppression

------------------------------------------------------------------------

## Introduction

Hate crime rates have experienced an increase over the past few years, and concerns were expressed regarding this issue. We identify this as a problem that impacts society as a whole, including stakeholders such as minoritized groups, the U.S. government, press, U.S. citizens, and the global community. In order to gain more insight to this issue, we will be mainly examining hate crime statistics retrieved from the Federal Bureau of Investigation (FBI). By comparing this data to of arrest records and political party affiliations by state, we will analyze datasets to answer questions such as the causes and motivations behind hate crimes, hate crime punishments by state, hate crime occurrences by minority population rates, and relations between political party affiliation by state and hate crimes. We hope that our analysis and outcome would contribute to creating a safer and more welcoming community to those involved.

## Problem Domain

**Hate crime** is defined by the United States Department of Justice (2022) as "At the federal level, a crime motivated by bias against race, color, religion, national origin, sexual orientation, gender, gender identity, or disability". The occurrences on hate crime have increased in recent years; 2020 had the highest record for reported hate crimes since 2008 (Arango, 2020).

Racism, which lies as one of the biggest superficial causes in hate crimes, correlates with political party affiliations of the general public; the statistical report from YouGov (2022) indicates that 81% of Democrats believe racism is a current problem that affects people of color, while only 28% of Republicans believe so.

The Southern Poverty Law Center (2020) also mentions that"It's important to note that, because of the nature of hate crime reporting, the FBI's annual report vastly understates the real level of hate crimes in the country." TRAC Reports (2019) also gives us a broader view of the issue, with only 4 hate crimes filed for prosecution in 2019.

The surge of reported hate crime rates, with its connections with oppression and political beliefs of the public, tells us that hate crimes are becoming a serious problem in the U.S. and that it might relate to and correspond with other factors such as political beliefs.

#### Human Values

-   Hate crime offense records become an indicator of where the public awareness of **respect, empathy, and equity** stands. As a nation of diversity, the current stance on these values of the U.S. shows social issues and attitudes towards minoritized groups.

#### Direct and Indirect Stakeholders

-   **Direct Stakeholders**
    -   *Black People* are the majority of race-based hate crime victims every year; *Hispanic people* are also experiencing an increased number of hate crimes directed towards them. *People of Color* are directly affected by hate crimes, regarding their sense of security and well-being.

    -   *Jews and Jewish institutions* are targets of hate crimes as well, and reported crime rates have increased by 14% (Southern Poverty Law Center, 2020). Their sense of security and well-being is also impacted.

    -   *LGBTQ people* are also affected, especially the transgender community, with an 18% increase; the highest rate since 2013, which was when the FBI started to collect this data (Southern Poverty Law Center, 2020). Their sense of security and well-being is impacted as well.\
-   **Indirect Stakeholders**
    -   *The U.S. federal government* examine changes in crime rates and make action, propose changes in the social system for their citizens to feel comfortable.

    -   *Journalists* record and their job is to make problems visible, informing the public of incidents that may influence their values and beliefs.

    -   *The global community* focuses on social issues and politics of the U.S. considering the significant influence that the U.S. hold over the world.

#### Potential Benefits and Harms

-   **Benefits**: Through analyzing hate crime data, the U.S. government and citizens will be able to see who and how people are experiencing violence that stems from oppression, eventually helping to raise awareness of hate crime issues.
-   **Harms**: Hate crimes are a direct threat to minoritized groups; they need direct assistance and immediate changes, and the dataset analysis might not be able to directly give them what they need right now.

## Research Questions

-   **What are the causes and motivations behind hate crimes?**
    -   It is important to address this question because identifying the root cause behind hate crimes is crucial to solving the problem itself. We hope that we acquire more knowledge on the root cause for a more intricate analysis that addresses intersectionality as a whole, contributing to the community as advocates of data feminism.
-   **How are hate crimes punishable across different states?**
    -   This question is important because we believe the outcomes of hate crimes will have an impact on hate crime rates. We wish to know if any states are more lenient or strict on hate crime punishments, and how it would affect hate crime rates by state.
-   **Do minority populations affect hate crimes in an area?**
    -   We wish to know if a larger minority population by state mitigates or exacerbates hate crime occurrences. This question is important because an analysis of hate crime occurrences by minority populations in different areas will inform stakeholders of their safety depending on location.
-   **How does the political party affiliation by state correspond with crime rates?**
    -   As we believe that political party affiliation has a connection to oppression that is happening in the U.S., we wish to know which states tend to advocate for a certain party and whether it affects changes in crime rates. With this analysis, stakeholders would be informed of any distinctions and will be prompted to make an action.

## The Dataset

-   Table:

| Data file name         | Purpose                                                                                                                                                                                                                                                                                           | Number of observations               | Number of variables | Citations                                                                                                     | URL                                                                                  |
|---------|---------------------------|---------|---------|-------------------------|----------------------|
| hate_crime.csv         | The purpose of this dataset is to help law enforcement address issues for communities, provide policymakers with justification for legislation, supply the media with credible information, show hate crime victims they are not alone, and help researchers in determining trends in hate crimes | 219577                               | 28                  | Learn about hate crimes. The United States Department of Justice. (2022, June 16). Retrieved October 29, 2022 | <https://www.justice.gov/hatecrimes/learn-about-hate-crimes>                         |
| Arrests by state 2020  | The purpose of this dataset is to hopefully show that the people who committed the hate crimes in 2020 got arrested, we can use the forms of attack (vandalism, assualt, arson, etc.) and the state to cross examine if they got arrested in each state                                           | 102 (2 for each state including D.C) | 35                  | FBI. (n.d.). Federal Bureau of Investigation Crime Data Explorer. Crime. Retrieved October 31, 2022           | <https://crime-data-explorer.app.cloud.gov/pages/explorer/crime/arrest>              |
| Political Party        | The purpose of this dataset is to show the voting outcomes for different US presidential candidates from the years 1976-2020. The dataset allows us to see which political parties were most favored in different states.                                                                         | 4288                                 | 15                  | U.S President 1976-2020. Harvard Dataverse. (n.d.). Retrieved October 31, 2022                                | <https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/42MVDX>    |
| US_Population_2020.csv | The purpose of this dataset is to check the ratio of hate crimes per population of each state.                                                                                                                                                                                                    | 51                                   | 5                   | Fatimi, S. Q. R. (2022, October 18). *US 2020 Census Data*. Kaggle. Retrieved November 14, 2022               | https://www.kaggle.com/datasets/mafhhdeveloper/us-2020-census-data?resource=download |

-   This dataset is from the FBI's Uniform Crime Reporting (UCR) Program. In this program, law enforcements from across the US can submit data about hate crimes. This dataset includes a column causes and motivations for each hate crime data. For example, causes and motivations may include "anti-black" or "anti-religious" reasons. This column can also help us understand whether or not certain laws in different states may prevent specific hate crimes, such as "anti-blackness", or raically motivated hate crimees, and "anti-hispanic", or ethnic hate crimes. Additonally, the demographics of the perpetrator and the victims are recorded per hate crime, which can help answer if minority populations are related to the hate crimes in some way. Additonally, it may help answer whether or not the crime rates relate to political party affiliatons.

-   The arrests by state dataset are related to our problem domain and specifically the research questions because it can show us how hate crimes are punished on a state-by-state basis. We can see how many people were arrested for each crime in each state in 2020 which enables us to be able see if there is a difference in how many people get arrested in each state. The dataset was collected from the FBI's Uniform Crime Reporting (UCR) Program. The program allowed all the arrests in each state in the year of 2020 to be documented with the amount of arrests of people under the age of 18 and over the age of 18, while also showing the amount of people who committed a certain crime (vandalism, assault, arson, etc.). Because the data was collected by the FBI it is extremely credible and trustworthy and I don't believe that they stand to gain any money from this information.

-   The political party dataset is from Harvard Dataverse. This dataset tells us the voting outcome for presidential candidates from years 1976-2020. This dataset can give us an insight on the favored political party per state. We can combine this dataset with the previous datasets to analyze trends in political party affliliations and rates or types of hate crimes across the country.

-   The US Population 2020 dataset is from Kaggle. This dataset tells us the population in each state in the U.S. in 2020. This dataset can be helpful in calculating the ratio of hate crimes by state population, so that we can study crime rates more accurately.

## Expected Implications

-   One expected implication is that our investigation into hate crimes has found that hate crimes rarely ever get prosecuted, which implies that there isn't a good way of defining what is and isn't a hate crime, this information could help the process of making laws that help define hate crime and help prosecute people who commit hate crimes.

-   Another expected implication is that our investigation into hate crimes has found that the amount of hate crimes committed/documented in each state is vastly different, for example, California has documented tens of thousands of hate crimes while Texas has reported around 9-8 thousand, this information could help implement a law that has each state define hate crime equally, instead of having an unequal definition in each state leading to a very differed amount of documented hate crimes.

## Limitations

-   The first limitation that we have is we can't see exactly what they did in terms of the crimes they committed, we have the general crime, but we can't see if they punched someone, hit them with a bat, shoved them, lit their house on fire, etc. To address the limitation we are going to take either the best case or worst case scenarios, or just worry about the general crime they committed and not worry about what they actually did.

-   The second limitation that we have is that we can't directly see if the person who committed the hate crime got arrested and the only chart of arrests we have that lines up with the other charts years is for 2020. To address this limitation we are going to take the number of each crime and the number of each arrest for said crime and try to make an educated guess on the percentage of people who actually got arrested.

------------------------------------------------------------------------

### Acknowledgements

We would like to thank our TA, Shinji Yamashita, and Professor Winegarden.

### References (APA 7)

Arango, T. (2020, November 16). *Hate crimes in U.S. rose to highest level in more than a decade in 2019*. The New York Times. Retrieved October 29, 2022, from <https://www.nytimes.com/2020/11/16/us/hate-crime-rate.html> 

Fatimi, S. Q. R. (2022, October 18). *US 2020 Census Data*. Kaggle. Retrieved November 14, 2022, from <https://www.kaggle.com/datasets/mafhhdeveolper/us-2020-census-data?resource=download>

*FBI reports an increase in hate crimes in 2019: Hate-based murders more than doubled*. Southern Poverty Law Center. (2020, November 16). Retrieved October 29, 2022, from <https://www.splcenter.org/news/2020/11/16/fbi-reports-increase-hate-crimes-2019-hate-based-murders-more-doubled> 

FBI. (n.d.). Federal Bureau of Investigation Crime Data Explorer. Crime. Retrieved October 31, 2022, from <https://crime-data-explorer.app.cloud.gov/pages/explorer/crime/arrest>

*Learn about hate crimes*. The United States Department of Justice. (2022, June 16). Retrieved October 29, 2022, from <https://www.justice.gov/hatecrimes/learn-about-hate-crimes> 

TRAC Reports, Inc. (2019, August 12). *Few federal hate crime referrals result in prosecution*. TRAC Reports. Retrieved October 29, 2022, from <https://trac.syr.edu/tracreports/crim/569/>

*U.S President 1976-2020*. Harvard Dataverse. (n.d.). Retrieved October 31, 2022, from <https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/42MVDX>

YouGov. (2022, September 30). *Racism: Opinions of adults on current state by party U.S. 2020*. Statista. Retrieved October 31, 2022, from <https://www.statista.com/statistics/1131594/opinions-us-adults-current-state-racism-political-party/> 

### Appendix A: Questions

-   What can we do more to improve our research analysis?
