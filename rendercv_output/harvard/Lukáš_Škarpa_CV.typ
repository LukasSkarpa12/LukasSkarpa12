// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Lukáš Škarpa",
  title: "Lukáš Škarpa - CV",
  footer: context { [#emph[Lukáš Škarpa -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in July 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.5in,
  page-bottom-margin: 0.5in,
  page-left-margin: 0.5in,
  page-right-margin: 0.5in,
  page-show-footer: true,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 9pt,
  typography-font-size-section-titles: 1.3em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.5cm,
  header-space-below-headline: 0.5cm,
  header-space-below-connections: 0.5cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "•",
  header-connections-space-between-connections: 0.4cm,
  section-titles-type: "centered_with_centered_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.2cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 7,
    day: 19,
  ),
)


= Lukáš Škarpa

#connections(
  [Pitín 32, Zlínský kraj, Czech Republic],
  [#link("mailto:lukas.skarpa.bata@gmail.com", icon: false, if-underline: false, if-color: false)[lukas.skarpa.bata\@gmail.com]],
  [#link("tel:+420-737-117-624", icon: false, if-underline: false, if-color: false)[737 117 624]],
  [#link("https://github.com/lukasskarpa", icon: false, if-underline: false, if-color: false)[lukasskarpa]],
)


== Summary

Ambitious 19-year-old Computer Science student with hands-on experience delivering international web development work for a global enterprise team. Combines 4 months as a Web Development Intern with Bata MDC and 8 months of subsequent freelance contract work for Bata, maintaining and improving international web platforms. Strong command of English (Cambridge B2) and a deep passion for modern web technologies, clean code, and continuous growth as a developer.

== Education

#education-entry(
  [
    #strong[GJP a SOŠ Slavičín], Student in Information Technology \/ Computer Science -- Slavičín, Czech Republic

  ],
  [
    Sept 2022 – June 2026

  ],
  degree-column: [
    #strong[Student]
  ],
  main-column-second-row: [
    - Focus on computer science, programming fundamentals, and networking.

    - Participation in technical projects and school-level IT competitions.

  ],
)

== Experience

#regular-entry(
  [
    #strong[Bata (Freelance Contract, via internship placement)], Freelance Web Developer -- Remote \/ Zlín, Czech Republic

  ],
  [
    Jan 2025 – Aug 2025

  ],
  main-column-second-row: [
    - Continued collaborating with Bata's international web team as an independent contractor following the internship, taking on greater ownership of platform updates.

    - Delivered ongoing improvements and maintenance across Bata's global websites, working directly with stakeholders using Jira and Confluence.

    - Operated with increased autonomy compared to the internship, managing tasks and delivery independently.

  ],
)

#regular-entry(
  [
    #strong[Bata Zlín MDC], Web Development Intern -- Zlín, Czech Republic

  ],
  [
    Sept 2024 – Jan 2025

  ],
  main-column-second-row: [
    - Full member of the Czech team managing Bata's global web platforms.

    - Owned the updating and maintenance of international websites used across multiple markets.

    - Used professional tools (Jira, Confluence, Git) daily within a real corporate engineering workflow.

  ],
)

== Skills

#strong[Web Development (Frontend):] HTML & CSS\/SCSS (advanced layout and styling), JavaScript & React (building interactive, production-grade web applications)

#strong[Programming & Logic:] Python (scripting and core logic)

#strong[Development Tools:] Git (version control across team projects), Jira & Confluence (professional project management and documentation)

#strong[Languages:] English — Cambridge B2 Certified
