Return-Path: <usb-storage+bncBD6LRVPZ6YGRBDVZUSYQMGQEXAEL5RA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4878B0D2F
	for <lists+usb-storage@lfdr.de>; Wed, 24 Apr 2024 16:52:00 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6a09341775csf8675216d6.1
        for <lists+usb-storage@lfdr.de>; Wed, 24 Apr 2024 07:52:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713970319; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ru+E8+TYhbcuaBGqfKHmsefKUVQfMN1NBS6r3f4R57KbT9PhsoYFhyacp+Ti9P6hr9
         +dnItCv1ViL14w2gQI+gqOHCWTVaqH/PNp6/NDKaAhMme/CgM80uFdCVOatqcaCbUa11
         1UfaDPOSYdnLwI+ALMFsF/BKpVSw7UTx15kOHIvcv5WlWzuW+tm+0nmuA/qHvTwXQa9o
         0a2fi1/KI5NeM0Jao9fBqvMvcEzzqQyhClTQbu7fKjY5v0lBlrGROebvcygQ8Rxdf+So
         1lZ9FDZ1wvrcXNWH+NCRx1BMZtRKZBBOZhZpv07YYx4k1tsfH2SP/TsD1jNkSFSMq7VI
         Ih9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4lb3WGPAPD7p03S5fe2SYK9hieO6XZMcq4ByPWa/hco=;
        fh=2eBoY+S/dHOBKNkvHClVSoZ4w8KE8mjxELFuk84XhoQ=;
        b=aoow3wpqd9RrXNLaM3SKHvHKK63c8lJ0YaR7kpCQJkmEKTdvIhpWwXA3yAlzyXyTPW
         o6HNqhCB5HSkOEyjusbAGh4q8+3Qv1KT0NPso8eeX0uev4ev8O6WA4mB66jhV7bef4ML
         +QFUBl43Q/GVsdTkrWI7EO1vombmkY2sVNHwUHwEF34ODcre7r14tul0Ee59+LHB6hM9
         dG1WoWTQcEiT9uf/pQ18tNBfTNEd61yUUslo6I2Bfuu9FwO7JPGIxlJvRjURyvbClHNf
         KiPPFjYna74sWg0R8FRMhbJyqP2s9cgklhpiN5nJJbyn8JnX0ayQoqXA4kIRFpD7CQUU
         8c3w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+66302a62@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1713970319; x=1714575119; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lb3WGPAPD7p03S5fe2SYK9hieO6XZMcq4ByPWa/hco=;
        b=jrvFuq6iK9sa/2AviTQ6JJgYZkjxk7fN+NHJJA8gJf4VJFvbMb00e/X8Dt6VuNrpdf
         zqSNkIRKxqSv7bIe8BQ5q8TXXlTa7Dw46KOj5j6tSBi7WySXzdytgOy8F/6/yrXH6H+e
         +IvJUFmpv+O5DvJplvlfErk2KJCJF8iFFjkIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713970319; x=1714575119;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lb3WGPAPD7p03S5fe2SYK9hieO6XZMcq4ByPWa/hco=;
        b=t1iZv4LlcB2TfxmCIbVzJZEtQFf4rzkbtq6hiaAyvVrxOQSk5HASIwJCC95/zVJEnw
         ta1xq2fdZ3vXyCfVLYccz8/aAVmtCOntrai86YZ5OFj1KCUuJglnJDWE+pRxkHtPEbbF
         +dR2koavk9UT+LnxR2zKZIopVqH4uMt0Qpr3MvVNbGk8+1ANvD+KQZ7nCxzdR+EBJtag
         6EfwEcvBbJgwY1m8JqTomNwfKS+y7ygL6WyzomnIrmlA7EifYq/k9y8w+YrsoInURnFe
         0dxoXMjr1fQ3ajJ1/QiARVe0z30qY4kwyBGb7hw9Jsm3eJKLhGjzV4z/zSnVhuQNDZLv
         I7jQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWMoqCHZOrfe0tgHUjyLNDO/uE14uctM/llclrpe+qilrKFn9vyYx/0h5WPaC2p/167kJrpzEEFlLWuTrvdAY1M6qVeYyPtc37h
X-Gm-Message-State: AOJu0YypRp2nLgIR3qLVkQUmWQu4nhDJR5Qnc1vC2+Y1BlivmnJuJDHL
	Zcsu/stetkv6nX11p7aUPm4WhUh1FXhaRSeYG1HfYSHnqmhZ7+OyQo8nulfp9fU=
X-Google-Smtp-Source: AGHT+IG4zQDb+w1XgO4alwXmhVwlHWCe3rn/XuohPTYNPhg8+w0MKrxoR9OYgfJGnHipMDsRSVpUsA==
X-Received: by 2002:ad4:4f21:0:b0:6a0:5034:778b with SMTP id fc1-20020ad44f21000000b006a05034778bmr2732372qvb.61.1713970319336;
        Wed, 24 Apr 2024 07:51:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2688:b0:699:be1:1139 with SMTP id
 6a1803df08f44-6a05d46efebls88023906d6.0.-pod-prod-08-us; Wed, 24 Apr 2024
 07:51:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWsyEDJeEYmmpXP89TUwjiDXrgFyXiovLfvNejUzZmZHWBQjN9w+rRcJ1RvDY2IL0QZjoox7I4le5BktnRBqtsj8FWMymHLxque6yAQv6vXkow+nao=
X-Received: by 2002:a05:6214:943:b0:6a0:8b8e:54a0 with SMTP id dn3-20020a056214094300b006a08b8e54a0mr2756609qvb.21.1713970318019;
        Wed, 24 Apr 2024 07:51:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713970318; cv=none;
        d=google.com; s=arc-20160816;
        b=jEglD9kuY0QccCroVZVqLh9e8/E734ZPFROQCLx6SiMBevIpuY5WZtiHFtdtUwhHKT
         pOy41QSM2EXsXTYP+L/TlIqftXHoX17eoTxRqJF2hBz8vLJOTKo42438duYZWSG/oJfO
         kDbza+Q0c+P5vlrFkGbqoxso2UiqERf7WCyERkh79yXTb88ZH/ygLShWMopyKiRcapyq
         sfogdDHF8eqpVFI7hIVQ12WWMQ03GldGsOrGIJ3M9v58lWDj4cEmqznK8Ybd8cLSgtIN
         TxDVzwdJ0GdLk9A2Dx7kfxN2jUMrla0VR+0DjU6Qwc0zkxRC2aZ9uB9tTl9Fye0i5Sp+
         6NOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=qIersBb/DsSKL1k6TMKJ/D9j/K7GQs5ZFNWR25M0gNw=;
        fh=FqUVr371cc1tTqxoDZir02HaIRYiJLTekm+ByvbbJgY=;
        b=pJxk57gkZWqk/bnVEwXEJ23enhpw+rl6PD9GEhNfZIXOwAuZxpKFEDc7Iq2B/IHI9h
         rBY6pdnDZWJCbDzxc5pYmQ34qX+Ti4MmSpM2Q9ih8fc8/IvTOrF55DBnQLyaGC55A0e0
         DwXfti401gjqknd2JpJwTlgOveyXjfej3YfIvaAx1vqrXlFnYkw6511EY/34gJZtu+ab
         FqnYDi4fi0sRACF6vgnAcg98QEkDzqTd5xfDbFrpaRmy3eSbZpyYI4kAGeTGvFMrpA6l
         jdIxfL7sc01LlXGVHe4bM7p/lJ3AdYYti31Tr+5ny/3pgLcwl9JGxfwyB3czRbRIhrb/
         IezQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+66302a62@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id im10-20020a056214246a00b0069936512817si15172891qvb.157.2024.04.24.07.51.57
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 24 Apr 2024 07:51:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 453342 invoked by uid 1000); 24 Apr 2024 10:51:57 -0400
Date: Wed, 24 Apr 2024 10:51:57 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Cc: gregkh@linuxfoundation.org, corbet@lwn.net, linux-doc@vger.kernel.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v4] usb-storage: Optimize scan delay more precisely
Message-ID: <c06aaaa1-a2af-47c6-a615-602f2c70de86@rowland.harvard.edu>
References: <20240424013134.17307-1-Norihiko.Hama@alpsalpine.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240424013134.17307-1-Norihiko.Hama@alpsalpine.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+66302a62@netrider.rowland.org;
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

On Wed, Apr 24, 2024 at 10:31:34AM +0900, Norihiko Hama wrote:
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
> V3 -> V4: Separate parser functions from module parameter set/get
> V2 -> V3: Change to use kstrtouint only for parsing decimal point
> V1 -> V2: Extend existing module parameter 'delay_use' to support decimal points

This is pretty good.  I've got a couple of minor suggestions.

>  .../admin-guide/kernel-parameters.txt         |   5 +
>  drivers/usb/storage/usb.c                     | 120 +++++++++++++++++-
>  2 files changed, 121 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 561d0dd776c7..8248426524d5 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -6190,6 +6190,11 @@
>  	usb-storage.delay_use=
>  			[UMS] The delay in seconds before a new device is
>  			scanned for Logical Units (default 1).
> +			The delay can have up to 3 decimal places, giving a
> +			resolution of one millisecond.
> +			Example:
> +				delay_use=2.567

This could go on the previous line.

			Example:  delay_use = 2.567

> +					2.567 second delay

This is obvious; I don't think you need to say it.

>  
>  	usb-storage.quirks=
>  			[UMS] A list of quirks entries to supplement or
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index 90aa9c12ffac..c908cf2a8027 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -67,9 +67,121 @@ MODULE_AUTHOR("Matthew Dharm <mdharm-usb@one-eyed-alien.net>");
>  MODULE_DESCRIPTION("USB Mass Storage driver for Linux");
>  MODULE_LICENSE("GPL");
>  
> -static unsigned int delay_use = 1;
> -module_param(delay_use, uint, S_IRUGO | S_IWUSR);
> -MODULE_PARM_DESC(delay_use, "seconds to delay before using a new device");
> +static unsigned int delay_use = 1 * MSEC_PER_SEC;
> +
> +/**
> + * str_to_fixed_point_uint - parse an unsigned fixed-point decimal integer
> + * @str: String to parse.
> + * @ndecimals: Number of decimal places in the fixed-point value.
> + * @val: Where to store the parsed value.
> + *
> + * Parse an unsigned fixed-point decimal value in @str, containing at
> + * most ndecimal digits to the right of the decimal point.
> + * Stores the parsed value in @val, scaled by 10^(@ndecimal).
> + *
> + * As with kstrtouint(), the string must be NUL-terminated and may
> + * include a single newline before the terminating NUL.  The first
> + * character may be a plus sign but not a minus sign.  The decimal
> + * point and fractional digits are optional.
> + *
> + * Returns 0 on success, a negative error code otherwise.
> + */
> +static int str_to_fixed_point_uint(const char *str, int ndecimals,
> +				   unsigned int *val)
> +{
> +	int n, n1, n2;
> +	const char *p;
> +	char *q;
> +	char buf[16];
> +
> +	n = strlen(str);
> +	if (n > 0 && str[n - 1] == '\n')
> +		--n;
> +
> +	p = strnchr(str, n, '.');
> +	if (p) {
> +		n1 = p++ - str;
> +		n2 = n - (n1 + 1);
> +		if (n2 == 0 || n2 > ndecimals)
> +			return -EINVAL;
> +	} else {
> +		n1 = n;
> +		n2 = 0;
> +	}
> +	if (n1 == 0 || n1 + ndecimals > sizeof(buf) - 1)
> +		return -EINVAL;

There's no reason to rule out strings like ".5" or "2.".  Allow either n1 
or n2 to be 0, as long as they aren't both 0.  (And even then, the code 
would accept "+" or "+.", which is bizarre but not terrible.)

> +
> +	memcpy(buf, str, n1);
> +	if (p)
> +		memcpy(buf + n1, p, n2);
> +	for (q = buf + n1 + n2; n2 < ndecimals; ++n2)
> +		*q++ = '0';
> +	*q = 0;
> +
> +	return kstrtouint(buf, 10, val);
> +}
> +
> +/**
> + * fixed_point_uint_to_str - parse into fixed-point decimal integer string
> + * @val: Integer value to parse.
> + * @ndecimals: Number of decimal places in the fixed-point value.
> + * @str: Where to store the parsed string.
> + * @size: The size of buffer for @str.
> + *
> + * Stores the parsed @val scaled by 10^(@ndecimal) into @str.
> + * The string trailing fractional part '0' is trimmed.

"Parse" is the wrong word here.  You parse a string to understand what it 
means (so the previous function parses @str).  But here you're converting 
an integer to a string; that's called "formatting".

So the function's description should be: format a fixed-point decimal value 
into a string.  @val is the integer value to format, scaled by 
10^(@ndecimals), and @str is where to store the formatted string.

> + *
> + * Returns the number of characters written into @str.
> + */
> +static int fixed_point_uint_to_str(unsigned int val, int ndecimals,
> +				   char *str, int size)
> +{
> +	unsigned int delay_ms = val;
> +	unsigned int rem = do_div(delay_ms, int_pow(10, ndecimals));
> +	int len;
> +	char buf[16];
> +
> +	len = scnprintf(buf, sizeof(buf), "%d", delay_ms);
> +	if (rem) {
> +		char format[8];
> +
> +		snprintf(format, sizeof(format) - 1, ".%%0%dd", ndecimals);
> +		len += scnprintf(buf + len, sizeof(buf) - len, format, rem);
> +		while (buf[len - 1] == '0') {
> +			buf[len - 1] = '\0';
> +			if (--len <= 1)
> +				break;
> +		}

Small simplification:  You know that len can never reach 0 because rem is 
nonzero, and in any case buf contains a '.' somewhere.  So this loop 
can be written as:

		while (buf[--len] == '0')
			buf[len] = 0;

Alan Stern

> +	}
> +	return scnprintf(str, size, "%s\n", buf);
> +}
> +
> +static int delay_use_set(const char *s, const struct kernel_param *kp)
> +{
> +	unsigned int delay_ms;
> +	int ret;
> +
> +	ret = str_to_fixed_point_uint(skip_spaces(s), 3, &delay_ms);
> +	if (ret < 0)
> +		return ret;
> +
> +	*((unsigned int *)kp->arg) = delay_ms;
> +	return 0;
> +}
> +
> +static int delay_use_get(char *s, const struct kernel_param *kp)
> +{
> +	unsigned int delay_ms = *((unsigned int *)kp->arg);
> +
> +	return fixed_point_uint_to_str(delay_ms, 3, s, PAGE_SIZE);
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
> @@ -1066,7 +1178,7 @@ int usb_stor_probe2(struct us_data *us)
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
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c06aaaa1-a2af-47c6-a615-602f2c70de86%40rowland.harvard.edu.
