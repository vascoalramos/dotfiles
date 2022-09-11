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
        hideIcon: true,
    },
    handlers: [
        {
            match: [/^https?:\/\/www\.notion\.so\/ydataai$/, /^https?:\/\/www\.notion\.so\/ydataai\/.*$/],
            browser: "Notion",
        },
        {
            match: [
                /^https?:\/\/github\.com\/ydataai$/,
                /^https?:\/\/meet\.jit\.si$/,
                /^https?:\/\/meet\.google\.com$/,
            ],
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
