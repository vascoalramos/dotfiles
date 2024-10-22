const BRAVE_PERSONAL = {
  name: "Brave Browser",
  profile: "Default",
};

const BRAVE_WORK = {
  name: "Brave Browser",
  profile: "Profile 9",
};

module.exports = {
  defaultBrowser: BRAVE_PERSONAL,
  options: {
    hideIcon: false,
  },
  handlers: [
    {
      match: [
        /^https?:\/\/github\.com\/ydataai.*$/,
        /^https?:\/\/meet\.jit\.si\/.*$/,
        /^https?:\/\/meet\.google\.com\/.*$/,
        /^https?:\/\/calendar\.google\.com\/.*$/,
        /^.*(feedzai|fdz).*$/,
      ],
      browser: BRAVE_WORK,
    },
    {
      // Open any link clicked in Slack & Notion in Brave Work
      match: ({ opener }) => ["Google Chat", "Mail", "zoom.us"].includes(opener.name),
      browser: BRAVE_WORK,
    },
    {
      match: [/^https?:\/\/instagram\.com\/.*$/, /redd\.it\/.*$/],
      browser: "Safari",
    },
    {
      match: finicky.matchDomains("open.spotify.com"),
      browser: "Spotify",
    },
  ],
};

// Browser profiles
// Person 1 - Personal
// Person 2 - Work
