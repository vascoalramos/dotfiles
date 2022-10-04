const BRAVE_PERSONAL = {
    name: "Brave Browser",
    profile: "Default",
};

const BRAVE_WORK = {
    name: "Brave Browser",
    profile: "Profile 1",
};

module.exports = {
    defaultBrowser: BRAVE_PERSONAL,
    options: {
        hideIcon: false,
    },
    handlers: [
        {
            match: /^https?:\/\/www\.notion\.so\/ydataai\/.*$/,
            browser: "Notion",
        },
        {
            match: [
                /^https?:\/\/github\.com\/ydataai.*$/,
                /^https?:\/\/meet\.jit\.si\/.*$/,
                /^https?:\/\/meet\.google\.com\/.*$/,
                /^https?:\/\/calendar\.google\.com\/.*$/,
                /^.*ydata.*$/,
            ],
            browser: BRAVE_WORK,
        },
        {
            // Open any link clicked in Slack & Notion in Brave Work
            match: ({ opener }) => ["Slack"].includes(opener.name),
            browser: BRAVE_WORK,
        },
        {
            // Open any link clicked in Mail & Outlook in Google Chrome
            match: ({ opener }) => ["notion.id"].includes(opener.bundleId),
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
// Person 2 - YData
