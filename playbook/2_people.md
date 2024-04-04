## People

In this page, we add the people we want to display in the people section. The people we want to add are defined in the `people` collection of `threefold_data`, so we need to add the file from the `people` collection which defines the person.

First we define the title and description of our people section.

```js
!!website.people_add 
    title:'Our People'
    sort_by: order
    description: 'Our team brings together +30 years of experience in cloud automation, Internet storage, and infrastructure services. We are a passionate group on a collective mission to make the world a better place for the people around us.'

```

Note that above we chose to sort by the order we add the people. As such, the order below determines the order in which they are listed in.

```js 
!!website.person_add pointer:'people:kristof_de_spiegeleer.md'
!!website.person_add pointer:'people:adnan_fatayerji.md'
!!website.person_add pointer:'people:jan_de_landtsheer.md'
!!website.person_add pointer:'people:owen_kemp.md'
!!website.person_add pointer:'people:peter_van_der_henst.md'
!!website.person_add pointer:'people:sacha_obeegadoo.md'
```
```js
!!website.person_add pointer:'people:abdulrahman_elawady.md'
!!website.person_add pointer:'people:ahmed_thabet.md'
!!website.person_add pointer:'people:alaa_mahmoud.md'
!!website.person_add pointer:'people:alexandre_hannelas.md'
!!website.person_add pointer:'people:eslam_nawara.md'
!!website.person_add pointer:'people:florian_fournier.md'
!!website.person_add pointer:'people:karoline_zizka.md'
!!website.person_add pointer:'people:lee_smet.md'
!!website.person_add pointer:'people:maxime_daniel.md'
!!website.person_add pointer:'people:nayer_sobhy.md'
!!website.person_add pointer:'people:pierre_van_hoorebeke.md'
!!website.person_add pointer:'people:rafik_magdy.md'
!!website.person_add pointer:'people:reem_khamis.md'
!!website.person_add pointer:'people:sabrina_sadik.md'
!!website.person_add pointer:'people:sam_taggart.md'
!!website.person_add pointer:'people:samar_adel.md'
!!website.person_add pointer:'people:sasha_astiadi.md'
!!website.person_add pointer:'people:scott_yeager.md'
!!website.person_add pointer:'people:timur_gordon.md'
```
```js
!!website.person_add pointer:'people:ahmed_hanafy.md'
!!website.person_add pointer:'people:ahmed_harby.md'
!!website.person_add pointer:'people:amira_abouhadid.md'
!!website.person_add pointer:'people:ashraf_fouda.md'
!!website.person_add pointer:'people:atef_nazmy.md'
!!website.person_add pointer:'people:bernadette_amanda_caster.md'
!!website.person_add pointer:'people:cameron_ramraichan_labeyrie.md'
!!website.person_add pointer:'people:ehab_hassan.md'
!!website.person_add pointer:'people:emilie_ouwerx.md'
!!website.person_add pointer:'people:erwan_renaut.md'
!!website.person_add pointer:'people:evon_yacoub.md'
!!website.person_add pointer:'people:gregory_flipo.md'
!!website.person_add pointer:'people:khaled_youssef.md'
!!website.person_add pointer:'people:mahendra_varma.md'
!!website.person_add pointer:'people:mahmoud_emad.md'
!!website.person_add pointer:'people:mario_bassem.md'
!!website.person_add pointer:'people:marion_ravarino.md'
!!website.person_add pointer:'people:mayar_osama.md'
!!website.person_add pointer:'people:mik_perreault.md'
!!website.person_add pointer:'people:mohamed_amer.md'
!!website.person_add pointer:'people:muhammed_azmy.md'
!!website.person_add pointer:'people:omar_abdulaziz.md'
!!website.person_add pointer:'people:omar_kassem.md'
!!website.person_add pointer:'people:peter_nashaat.md'
!!website.person_add pointer:'people:ramez_saeed.md'
!!website.person_add pointer:'people:rawda_gastan.md'
!!website.person_add pointer:'people:sameh_abouelsaad.md'
!!website.person_add pointer:'people:samir_hosny.md'
!!website.person_add pointer:'people:shangreiyo_awungshi.md'
!!website.person_add pointer:'people:sherwin_tully.md'
!!website.person_add pointer:'people:threefold_community.md'
!!website.person_add pointer:'people:zainab_elgohary.md'
```