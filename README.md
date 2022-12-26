# Hitchhiker's Guide to URL Analysis

# Intro 
URL Analysis is a collection of techniques to determine whether a given URL is malicious or not. Generally we encounter two types of URL i.e, Short URL & Long URL. In this repo we will see some tools & techniques for analyzing these URLs and figure out whether they are safe or not.


## Short URLs

Short URLs are often used in malicious campaign. The issue with them is that we can't simply determine where they are pointing unless we open them in some manner. 
Here are some tricks for converting them to original form.
- [ZSCALER ZULU](https://zulu.zscaler.com/)
- [UNSHORTEN.IT](https://unshorten.it/)
- [URLSCAN.IO](https://urlscan.io/)
- Some services like bit.ly, goo.gl, tiny.url can be expanded by appending "`+`". 
  For e.g, `bit.ly/abcdefgh+`
- You can also use [UrlXpand](https://github.com/wand3rlust/Hitchhikers-Guide-to-URL-Analysis/blob/main/urlxpand.sh), a CLI tool I cooked after seeing Rob VandenBrink's Unshorten script.

## Long URLs
Now that we have a long URL, we can perform some analysis on it as follows:-
- Check the WHOIS records on Databases like [WHOIS](https://whois.com), [WHO.IS](https://who.is).
- Check the DNS records using tools like [DNSDUMPSTER](https://dnsdumpster.com/), [MXTOOLBOX](https://mxtoolbox.com/DNSLookup.aspx).
- Check the site reputation & related data using Threat Intelligence platforms like [VIRUSTOTAL](https://www.virustotal.com/), [CISCO TALOS](https://talosintelligence.com/reputation_center), [PULSEDIVE](https://pulsedive.com/), [OPSWAT METADEFENDER](https://metadefender.opswat.com/).
- Open the URL in browser sandboxes like [BROWSERLING](https://www.browserling.com/) and [WANNABROWSER](https://www.wannabrowser.net/) with custom user agents.
- Some URLs maybe in format `https://example.com/@not-malicious.com`. Here first part of URL is just for show, once a user clicks in this link `not-malicious.com` will load instead of `example.com`.


## Related Writeups:-
- https://isc.sans.edu/diary/Taking+Apart+URL+Shorteners/28980
- https://medium.com/@joseph.pyram/9-parts-of-a-url-that-you-should-know-89fea8e11713
- https://hustlelead.medium.com/url-analysis-how-to-determine-maliciousness-f630b4e51b9e
- https://www.intezer.com/blog/malware-analysis/url-analysis-phishing-part-1/
- https://wiki.archiveteam.org/index.php?title=URLTeam#URL_shorteners

## Contributing
To contribute simply fork this repo, make changes and create a pull request.

## Support
If you like this repo please consider giving a :star:.
