# Project Title: Hate Crimes in the U.S.

#### code name: Keep Peace

------------------------------------------------------------------------

**Authors**\
Jiyoon Kim \| jiyoon99\@uw.edu\
Qiqi Liang \|\
Michael Cinnamon \|\
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

## Introduction (About 150 words.)

Hate crime rates have experienced an increase over the past few years. We will be examining hate crime statistics retrieved from the Federal Bureau of Investigation (FBI). By comparing the data from \~\~\~, We hope that our analysis and outcome would contribute to creating a safer and welcoming community to everyone.

## Problem Domain

**Hate crime** is defined by the United States Department of Justice (2022) as "At the federal level, a crime motivated by bias against race, color, religion, national origin, sexual orientation, gender, gender identity, or disability". The occurrences on hate crime have increased in recent years; 2020 had the highest record for reported hate crimes since 2008 (Arango, 2020). The Southern Poverty Law Center (2020) also mentions that"It's important to note that, because of the nature of hate crime reporting, the FBI's annual report vastly understates the real level of hate crimes in the country." TRAC Reports (2019) also gives us a broader view of the issue, with only 4 hate crimes filed for prosecution in 2019.\
The surge of reported hate crime rates, combined with the underlying issue of understated report counts, tells us that hate crimes might be an underestimated problem in the U.S.

#### Human Values

-   Hate crime offense records become an indicator of where the public awareness of **respect, empathy, and equity** stands. As a nation of diversity, the current stance on these values of the U.S. shows social issues and attitudes towards minoritized groups.

#### Direct and Indirect Stakeholders

-   **Direct Stakeholders**
    -   *Black People* are the majority of race-based hate crime victims every year; *Hispanic people* are also experiencing an increased number of hate crimes directed towards them. *People of Color* are directly affected by hate crimes, regarding their sense of security and well-being.

    -   *Jews and Jewish institutions* are targets of hate crimes as well, and reported crime rates have increased by 14% (Southern Poverty Law Center, 2020). Their sense of security and well-being is also impacted.

    -   *LGBTQ people* are also affected, especially the transgender community, with an 18% increase; the highest rate since 2013, which was when the FBI started to collect this data (Southern Poverty Law Center, 2020). Their sense of security and well-being is impacted as well. \
-   **Indirect Stakeholders**
    -   *The U.S. federal government* examine changes in crime rates and make action, propose changes in the social system for their citizens to feel comfortable.

    -   *Journalists* record and their job is to make problems visible, informing the public of incidents that may influence their values and beliefs.

    -   *The global community* focuses on social issues and politics of the U.S. considering the significant influence that the U.S. hold over the world.

#### Potential Benefits and Harms

-   **Benefits**: Through analyzing hate crime data, the U.S. government and citizens will be able to see who and how people are experiencing violence that stems from oppression, eventually helping to raise awareness of hate crime issues.
-   **Harms**: Hate crimes are a direct threat to minoritized groups; they need direct assistance and immediate changes, and the dataset analysis might not be able to directly give them what they need right now.

## Research Questions

1.  What are the causes and motivations behind hate crimes?
2.  How are hate crimes punishable across different states?
3.  Do minority populations affect hate crimes in an area?
4.  How does the political party affiliation correspond with crime rates?

## The Dataset

-   Table:

| Data file name  | Purpose                                                                                                                                                                                                                                                                                           | Number of observations | Number of variables | Citations                                                                                                     | URL                                                          |
|------------|------------|------------|------------|------------|------------|
| Hate crime data | The purpose of this dataset is to help law enforcement address issues for communities, provide policymakers with justification for legislation, supply the media with credible information, show hate crime victims they are not alone, and help researchers in determining trends in hate crimes | 219577                 | 28                  | Learn about hate crimes. The United States Department of Justice. (2022, June 16). Retrieved October 29, 2022 | <https://www.justice.gov/hatecrimes/learn-about-hate-crimes> |
| Arrests by state 2020 | The purpose of this dataset is to hopefully show that the people who committed the hate crimes in 2020 got arrested, we can use the forms of attack (vandalism, assualt, arson, etc.) and the state to cross examine if they got arrested in each state | 102 (2 for each state including D.C)                | 35                  | FBI. (n.d.). Federal Bureau of Investigation Crime Data Explorer. Crime. Retrieved October 31, 2022  | <https://crime-data-explorer.app.cloud.gov/pages/explorer/crime/arrest> |

-   This dataset is from the FBI's Uniform Crime Reporting (UCR) Program. In this program, law enforcements from across the US can submit data about hate crimes. This dataset includes a column causes and motivations for each hate crime data. For example, causes and motivations may include "anti-black" or "anti-religious" reasons. This column can also help us understand whether or not certain laws in different states may prevent specific hate crimes, such as "anti-blackness", or raically motivated hate crimees, and "anti-hispanic", or ethnic hate crimes. Additonally, the demographics of the perpetrator and the victims are recorded per hate crime, which can help answer if minority populations are related to the hate crimes in some way. Additonally, it may help answer whether or not the crime rates relate to political party affiliatons.

## Expected Implications

(grading rubric) You list two expected implications - that is, findings from your investigation that might be help us understand the natural or built environments or might be used by other stakeholders (policymakers, designers, scientists, etc.)\
\* For each implication, you discuss the implication\

- The first expected implication is that

- The second expected implication is that

## Limitations

- The first limitation that we have is we can't see exactly what they did in terms of the crimes they committed, we have the general crime, but we can't see if they punched someone, hit them with a bat, shoved them, lit their house on fire, etc. To address the limitation we are going to take either the best case or worst case scenarios, or just worry about the general crime they committed and not worry about what they actually did.

- The second limitation that we have is that we can't directly see if the person who committed the hate crime got arrested and the only chart of arrests we have that lines up with the other charts years is for 2020. To address this limitation we are going to take the number of each crime and the number of each arrest for said crime and try to make an educated guess on the percentage of people who actually got arrested.
------------------------------------------------------------------------

### Acknowledgements
We would like to thank ----

### References (APA 7)

Arango, T. (2020, November 16). *Hate crimes in U.S. rose to highest level in more than a decade in 2019*. The New York Times. Retrieved October 29, 2022, from <https://www.nytimes.com/2020/11/16/us/hate-crime-rate.html> 

*FBI reports an increase in hate crimes in 2019: Hate-based murders more than doubled*. Southern Poverty Law Center. (2020, November 16). Retrieved October 29, 2022, from <https://www.splcenter.org/news/2020/11/16/fbi-reports-increase-hate-crimes-2019-hate-based-murders-more-doubled> 

*Learn about hate crimes*. The United States Department of Justice. (2022, June 16). Retrieved October 29, 2022, from <https://www.justice.gov/hatecrimes/learn-about-hate-crimes> 

TRAC Reports, Inc. (2019, August 12). *Few federal hate crime referrals result in prosecution*. TRAC Reports. Retrieved October 29, 2022, from <https://trac.syr.edu/tracreports/crim/569/> 

### Appendix A: Questions
