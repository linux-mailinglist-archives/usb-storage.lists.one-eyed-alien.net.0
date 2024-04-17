Return-Path: <usb-storage+bncBD6LRVPZ6YGRBYWJ7SYAMGQEQT56N4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id B85008A7A20
	for <lists+usb-storage@lfdr.de>; Wed, 17 Apr 2024 03:24:51 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-434ee9205d1sf43418811cf.2
        for <lists+usb-storage@lfdr.de>; Tue, 16 Apr 2024 18:24:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713317090; cv=pass;
        d=google.com; s=arc-20160816;
        b=o9jlM6t/ApuwNvwO+EvDFRgHZw0YsS1mjjtf0Vfj+5qJvtjQDKWk1WijLMlsMG8LfJ
         v98EL8C3TqXEN6Lu5XcvS9CZ00nU6efQ7qbfqY7u9dQxughf3lMqNQKwC41BhB+TOdxm
         Udb5DRDlPRbHyZxTOliyQA844qi30c8CLsnigX19iMyGeqNgWlSBA1IWimqlz9ZhQPM2
         ZbedVfMyWVCtq0drUPPcZKTW6M0hWmkwGpP54wsLZBiwzTBaIjxsyMYhwHObrq5ZLplr
         2Tqmxpei/RdNJSuUedTZgnUgK5wmoY/G3sVyxHR/98FzxtO9NIe2lWCY2osqNCrioUV1
         xA4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FKtkKikSY07qyz5doHhec1LNn6x4mmHFvheQUD1PmNw=;
        fh=CGVwgrhUJhVMknATNy4gD7r9TJACPLnDfaPPt2420LA=;
        b=p/GXE+gJkvGeaJkkD+SFJK6Ib55UvKZtNxgXSLKDh5abE2b906XXnoKe8JlW0IPi6y
         C95XDjElgnh7OgKAoSZ3n1DLd5rmpIw1dhm3op25+KfDzzTOoxMJlVICq0hoIXvRIe6l
         vovJLrvBn2KI1Jo3lAEhMZwkcPRa6d3t4WuM4MeIyfLooZnrT6S7phwDaU2MMchKEmet
         i4pXM8EruriIPh0B7SWQVGDATH74lreKDvgHLPob8wHGCfPlphMTjRqJntTZ9CHmCrCz
         JtMuKw5Gw0F3AmbG+mIYg8i2SPONabHOMQl4ZFns2clg+xREXvtTskb4hFMxIVc4X/bx
         fBsg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1713317090; x=1713921890; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FKtkKikSY07qyz5doHhec1LNn6x4mmHFvheQUD1PmNw=;
        b=CRsPSf4CbX15mwsk0Wjf7vj2BYsBEkYU6FkM8/26vthP4P7Y1Qu4NRbX4XMEkrFgQZ
         9tAKfYYQBGkv4sardlfXq+L6LpbK24sf2iZOLUIGfvvNa4J9RN65OCf0L+5askBWkxYB
         X2d6SyuDXVMm0aXBkWcbxtNORgH+D18KLuJpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713317090; x=1713921890;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FKtkKikSY07qyz5doHhec1LNn6x4mmHFvheQUD1PmNw=;
        b=PWhnhTmihPy8PX5mure0xbOqZKkdVVqzUjszAElWetgVfY/vtcqOtQL4asfbUXoEPx
         RDyncE7MnKZrzjz4rAfa7LDGeYxWQ5RpqSt8CScWCzmaXFp6gNlRHYshtQ2pU4QxPnfT
         YJaXdXI6eOpc3tpVr1Og0p75P+kWe+SEvbggWYOrCedE2TxNU8loDAinyXtcRZX+orfT
         /9gKLCqKsruNpo9xhPiS/1s5+x4rzz7vWHC7TzZiXDiVh6nxxavW1mylH7eKnfTF+Obt
         jBq15H1AIU+afqiHCCb3H80g8g8MX7QWSiLZwh+lW+YBijcy9D0CHR77yromorypfGyt
         FkZg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUWOPawtRNlv8h7DoqgNOYqil6VImeKAU0/wfkpTl6Hp1wc83P9uN6Rqr+6ABuFRqJr6fX8jNXnRv73iCRw3Vzy8uZhyGH+xNEq
X-Gm-Message-State: AOJu0Yw5VLNBZxMSbLMqoTLtBsh1TBQrODuoYvU+m48jehRMbrCClyr8
	XXBJDYKYJORqz4uYwnwu7U36FRxKmG3WKweKIM1FZKTVWjy8I0Qn/4sI+cqCyXo=
X-Google-Smtp-Source: AGHT+IFln+U1RMw9PZCgJ/uHswoLVwHlj56StNFiLwEdig/xaScNM1MVVEtcTsEMcRsTjzehEXRQhw==
X-Received: by 2002:ac8:5f0c:0:b0:435:21d:abe7 with SMTP id x12-20020ac85f0c000000b00435021dabe7mr18526693qta.27.1713317090524;
        Tue, 16 Apr 2024 18:24:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:130b:b0:436:5e09:5c3a with SMTP id
 v11-20020a05622a130b00b004365e095c3als1594520qtk.1.-pod-prod-01-us; Tue, 16
 Apr 2024 18:24:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUS0p8ogct+Gmsw/9gA0+contD2zWP126CznlO6aCF5+YEy+wzz2JfDupHENEfsSA0axLi24L2Ud32q4kPGsWjuccJEZoP8uUTUIfzrjwMajWm8r1Q=
X-Received: by 2002:a05:622a:8a:b0:436:9246:c812 with SMTP id o10-20020a05622a008a00b004369246c812mr18305798qtw.38.1713317089399;
        Tue, 16 Apr 2024 18:24:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713317089; cv=none;
        d=google.com; s=arc-20160816;
        b=Rp+YpYDOiKX+wwjzjXj0MMPGiLQI4TEmT7bUflueG4BHlW6sBHhLWPHC+BfxLGIGee
         hgmvykE3JvdhKMtMUv3DtyaJ4SOQBkgZz/ek+7HJCn2SJq9a0gT7xQgEC9q/DcLuKwfm
         Xrr/v2cBeplrFdtN1WepjtCom3IDLr+7t0Bcp3Xnw42d6MbKmenfojG0j2hdrxr2BFFD
         1oRn95AbtSTwnOGIYFSq7W2p3tXa6XOwyrOA+quKOG9WvFDiC/+8PAULhcgckUUvbMP8
         O6Sdyf0lmeRuhvqmQGzlbRcivFvYrL/CWb3GeCKqOJ5NuwX0gw6amNDDE77/0RF0XSbN
         SnjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=u6CxLFlkQ+2Niu9pSN3uv4y8RlXR80OfHRpMXNW+Z7k=;
        fh=VhKdhic7USZ3KxZ5xTe56vp5fclBrt471n0NyneiqeE=;
        b=Dyes/6fivwMRcc1Kc9G/bcb8dkcL5Y5oemGUhPw7GSHjXT2KZsWr5itXQF1NNUFb1P
         P/cmvvcoeWA4s4pVJWNuOwZskB8068C4KQHvYnj4IDk+gCy/hdBZz7eRGmCivMh9qsw/
         GWYEYvQyHOQkHLTdvmYyJxwFwzqWjO5wSwhDNGTGcrg9uyMXlUjmoZunHA+kRqXwvcM4
         eOnPoGh5HEyzkqH1dPNW2jCDQgzokrm4EogTR9VMb1+HcIMbpY3rmBibx9VbIIAk+jaE
         UwQhcqbYJPj+FA/EDkHuomKfKT3bqQqZa5r8iV2Ke3AzCtYsl6+pAYBuA0M3pkBQnAIw
         tDNQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id u6-20020a05622a14c600b004347c558bacsi13720517qtx.76.2024.04.16.18.24.49
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 16 Apr 2024 18:24:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 182709 invoked by uid 1000); 16 Apr 2024 21:24:48 -0400
Date: Tue, 16 Apr 2024 21:24:48 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Cc: mdharm-usb@one-eyed-alien.net, gregkh@linuxfoundation.org,
  linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v3] usb-storage: Optimize scan delay more precisely
Message-ID: <4d94b2a8-dd2a-4bae-9a0c-8125747f404a@rowland.harvard.edu>
References: <20240416082821.10164-1-Norihiko.Hama@alpsalpine.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240416082821.10164-1-Norihiko.Hama@alpsalpine.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

On Tue, Apr 16, 2024 at 05:28:21PM +0900, Norihiko Hama wrote:
> Current storage scan delay is reduced by the following old commit.
> 
> a4a47bc03fe5 ("Lower USB storage settling delay to something more reasonable")
> 
> It means that delay is at least 'one second', or zero with delay_use=0.
> 'one second' is still long delay especially for embedded system but
> when delay_use is set to 0 (no delay), still error observed on some USB drives.
> 
> So delay_use should not be set to 0 but 'one second' is quite long.
> Especially for embedded system, it's important for end user
> how quickly access to USB drive when it's connected.
> That's why we have a chance to minimize such a constant long delay.
> 
> This patch optimizes scan delay more precisely
> to minimize delay time but not to have any problems on USB drives
> by extending module parameter 'delay_use' in milliseconds internally.
> The parameter 'delay_use' is changed to be parsed as 3 decimal point value
> if it has digit values with '.'.
> It makes the range of value to 1 / 1000 in internal 32-bit value
> but it's still enough to set the delay time.
> By default, delay time is 'one second' for backward compatibility.
> 
> For example, it seems to be good by changing delay_use=0.1,
> that is 100 millisecond delay without issues for most USB pen drives.
> 
> Signed-off-by: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
> ---

At this location you're supposed to describe how this version of the patch 
differs from the previous version.

>  .../admin-guide/kernel-parameters.txt         | 10 +++
>  drivers/usb/storage/usb.c                     | 72 +++++++++++++++++--
>  2 files changed, 78 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 561d0dd776c7..ae1eb5988706 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -6190,6 +6190,16 @@
>  	usb-storage.delay_use=
>  			[UMS] The delay in seconds before a new device is
>  			scanned for Logical Units (default 1).
> +			To specify more precise delay, supports 3 decimal point.
> +			The range of decimal point is in milliseconds,
> +			hence the minimum value is "0.001".

The text could be better.  For example:

			The delay can have up to 3 decimal places, giving a
			resolution of one millisecond.

> +			Example:
> +				delay_use=1
> +					1 second delay
> +				delay_use=0.1
> +					0.1 second delay
> +				delay_use=2.55
> +					2.55 second elay

This should show all 3 decimal places:

				delay_use=2.567
					2.567 second delay

>  	usb-storage.quirks=
>  			[UMS] A list of quirks entries to supplement or
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index 90aa9c12ffac..d5eb7dd8f3b1 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -67,9 +67,73 @@ MODULE_AUTHOR("Matthew Dharm <mdharm-usb@one-eyed-alien.net>");
>  MODULE_DESCRIPTION("USB Mass Storage driver for Linux");
>  MODULE_LICENSE("GPL");
>  
> -static unsigned int delay_use = 1;
> -module_param(delay_use, uint, S_IRUGO | S_IWUSR);
> -MODULE_PARM_DESC(delay_use, "seconds to delay before using a new device");
> +static unsigned int delay_use = 1 * MSEC_PER_SEC;
> +
> +static int delay_use_set(const char *s, const struct kernel_param *kp)
> +{
> +	unsigned int delay_ms = 0;
> +	int frac = 3, ret;
> +	char *p = skip_spaces(s);
> +	char buf[16];
> +
> +	if (strlen(p) >= sizeof(buf) - frac)
> +		return -EINVAL;
> +
> +	strscpy_pad(buf, p, sizeof(buf));
> +
> +	p = strchr(buf, '.');
> +	if (p) {
> +		int i = 0;
> +		char *tmp = p + 1;
> +
> +		while (tmp[i] && tmp[i] != '\n')
> +			*p++ = tmp[i++];
> +
> +		if (i == 0 || i > frac)
> +			return -EINVAL;
> +		frac -= i;
> +	} else {
> +		p = buf + strlen(buf) - 1;
> +		if (*p != '\n')
> +			p++;
> +	}
> +	while (frac-- > 0)
> +		*p++ = '0';
> +	*p = '\0';
> +
> +	ret = kstrtouint(buf, 10, &delay_ms);
> +	if (ret < 0)
> +		return ret;
> +
> +	*((unsigned int *)kp->arg) = delay_ms;
> +	return 0;
> +}

As I said before, the parsing code should be in a separate function to make 
reviewing the code easier.  It also should be written more clearly.  Here's 
my attempt (not tested at all).  You might prefer to remove some of the 
comments; I put in a lot of them.

/**
 * str_to_fixed_point_uint - parse an unsigned fixed-point decimal integer
 * @str: String to parse.
 * @ndecimals: Number of decimal places in the fixed-point value.
 * @val: Where to store the parsed value.
 *
 * Parse an unsigned fixed-point decimal value in @str, containing at
 * most ndecimal digits to the right of the decimal point.
 * Stores the parsed value in @val, scaled by 10^(@ndecimal).
 *
 * As with kstrtouint(), the string must be NUL-terminated and may
 * include a single newline before the terminating NUL.  The first
 * character may be a plus sign but not a minus sign.  The decimal
 * point and fractional digits are optional.
 *
 * Returns 0 on success, a negative error code otherwise.
 */
static int str_to_fixed_point_uint(const char *str, int ndecimals,
		unsigned int *val)
{
	int n, n1, n2;
	const char *p;
	char *q;
	char buf[16];

	n = strlen(str);
	if (n > 0 && str[n - 1] == '\n');
		--n;

	p = strchr(str, '.');
	if (p) {
		n1 = p++ - str;		/* Length of integral part */
		n2 = n - (n1 + 1);	/* Length of fractional part */
		if (n2 > ndecimals)
			return -EINVAL;
	} else {
		n1 = n;			/* Length of integral part */
		n2 = 0;			/* No fractional part */
	}
	if (n1 + n2 == 0 || n1 + ndecimals > sizeof(buf) - 1)
		return -EINVAL;		/* No digits present or too long */

	memcpy(buf, str, n1);		/* Integer part */
	memcpy(buf + n1, p, n2);	/* Fractional part */
	for (q = buf + n1 + n2; n2 < ndecimals; ++n2)
		*q++ = '0';		/* Remaining fractional digits */
	*q = 0;

	return kstrtouint(buf, 10, val);
}

> +
> +static int delay_use_get(char *s, const struct kernel_param *kp)
> +{
> +	unsigned int delay_ms = *((unsigned int *)kp->arg);
> +	unsigned int rem = do_div(delay_ms, MSEC_PER_SEC);
> +	int len;
> +	char buf[16];
> +
> +	len = scnprintf(buf, sizeof(buf), "%d", delay_ms);
> +	if (rem) {
> +		len += scnprintf(buf + len, sizeof(buf) - len, ".%03d", rem);
> +		while (buf[len - 1] == '0') {
> +			buf[len - 1] = '\0';
> +			if (--len <= 1)
> +				break;
> +		}
> +	}

While this could also go in a separate function, it's short enough to keep 
here.

Alan Stern

> +	return scnprintf(s, PAGE_SIZE, "%s\n", buf);
> +}
> +
> +static const struct kernel_param_ops delay_use_ops = {
> +	.set = delay_use_set,
> +	.get = delay_use_get,
> +};
> +module_param_cb(delay_use, &delay_use_ops, &delay_use, 0644);
> +MODULE_PARM_DESC(delay_use, "time to delay before using a new device");
>  
>  static char quirks[128];
>  module_param_string(quirks, quirks, sizeof(quirks), S_IRUGO | S_IWUSR);
> @@ -1066,7 +1130,7 @@ int usb_stor_probe2(struct us_data *us)
>  	if (delay_use > 0)
>  		dev_dbg(dev, "waiting for device to settle before scanning\n");
>  	queue_delayed_work(system_freezable_wq, &us->scan_dwork,
> -			delay_use * HZ);
> +			msecs_to_jiffies(delay_use));
>  	return 0;
>  
>  	/* We come here if there are any problems */
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4d94b2a8-dd2a-4bae-9a0c-8125747f404a%40rowland.harvard.edu.
