# Voyantis AI Google Tag Manager Template

Official Google Tag Manager custom template for [Voyantis AI](https://voyantis.ai) - AI-powered customer analytics and predictive modeling.

## What This Tag Does

The Voyantis AI GTM template loads the Voyantis AI SDK on your website to:

- **Collect event data** from Google Tag Manager
- **Send data to Voyantis** internal webhook for AI-powered analysis
- **Enable predictive models** for customer lifetime value, churn prediction, and more
- **Integrate seamlessly** with your existing GTM setup

The tag injects the Voyantis SDK script dynamically based on your API key and environment configuration.

## Setup Steps

### 1️⃣ Import Template into GTM

**From Community Template Gallery**
1. In your GTM workspace, go to **Templates** → **Search Gallery**
2. Search for "Voyantis AI"
3. Click **Add to workspace**

### 2️⃣ Configure API Key

1. Create a new tag using the Voyantis AI template
2. Enter your **API Key** (available in your [Voyantis dashboard](https://app.voyantis.ai))
3. The API key is required and must be valid

### 3️⃣ Select Environment

Choose your deployment environment:

- **Production**: For live websites (default)
- **Staging**: For testing and development
  - ✨ Enables console debug logging
  - ✨ Loads SDK from staging endpoint

### 4️⃣ Trigger Tag on Events

1. Add a trigger to your tag (e.g., "All Pages" for pageview tracking)
2. For event tracking, use appropriate triggers (form submissions, button clicks, etc.)
3. Save and publish your GTM container

## Configuration Reference

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| **API Key** | Text | ✅ Yes | Your Voyantis API key from the dashboard |
| **Environment** | Dropdown | ✅ Yes | `Production` or `Staging` |

## Support & Contact

- 📧 **Email**: support@voyantis.ai
- 📖 **Documentation**: [https://voyantis.ai/docs](https://voyantis.ai/docs)
- 🌐 **Website**: [https://voyantis.ai](https://voyantis.ai)
- 💬 **Contact**: [https://voyantis.ai/contact](https://voyantis.ai/contact)

## License

This template is licensed under the Apache License 2.0. See [LICENSE](LICENSE) file for details.

## About Voyantis AI

Voyantis AI empowers marketing teams with AI-powered predictive analytics to:
- Predict customer lifetime value (LTV)
- Identify high-value audiences
- Optimize ad spend with predictive audiences
- Reduce churn with early warning signals

Learn more at [voyantis.ai](https://voyantis.ai)

---

**Version**: 1.0.0  
**Last Updated**: October 2025  
**Maintained by**: Voyantis AI Team

