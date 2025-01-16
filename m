Return-Path: <usb-storage+bncBDNLPI4ESUMBBMHTUO6AMGQEM3LE6CA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CC0A139D6
	for <lists+usb-storage@lfdr.de>; Thu, 16 Jan 2025 13:21:05 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6d8fe8a0371sf17262116d6.1
        for <lists+usb-storage@lfdr.de>; Thu, 16 Jan 2025 04:21:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1737030064; cv=pass;
        d=google.com; s=arc-20240605;
        b=kJXyLtIL1Zn4e0ryu7zHv1a8rpt0Q5K5V+vGztegr0oAO9pDol0Fu7791ucSuIZkXj
         pQGNv1VH1AL4bfHw1qJvyXaGZSsqkHlBBa+yjhnD0BkMS2kN7jU1KHlAO/sucI2CBhnO
         2oJSlfi5iH5NSO4fyiu5MVZwloxDGaKlCxgm5KpDVu6fEJx+so2hAE2YUz5DSnNnHTWa
         fZxh8HxHAOBjymL2lcIepREn4ztau96W5+6byHUr1Sm0zcVPBL/tG4r2FQCPHfcK1uUh
         42wOrYh7Es2O6sC4poWzn0he7J/k+gsxFhdJfuF6Uz5IyJ2BtVVVK8+2KLLS/+GSop1i
         JVcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9TQ+1lLM3UaLo1bSS1pdyKcCg8xu1TNbZAD1KmLskMM=;
        fh=Th5Gr2vjEiS3NzFh0D54TZP42U+lV/6YIAZK+ctChac=;
        b=OJJG444wB9uOu4kStsz+6dYIhyi1xLIBpCyZtP7QXveUymLYNrEUckhaShrmMTF3e7
         GSnT8W7LeQAr5D73MkFLuvk0xdGxdGMEWhnYbrgzgixz5L0J3Mejg1hNTBYGxOnYbTrJ
         PxD78sQWMndi6su/JbKEeyfFszlWwcpKaHZrgAAGb+GNem9GeBnT7wUgcKAoz6U3AfJl
         KiNGLo+jjH8pGSUvNUuQf+Y/wQH+tERwTcyL/l4LeqqG63+UoZ4C6dwCvioFYsK9EBxO
         ApT+WB8gFNeooA3WtIr+fAh9SKBzSBzjGbykN28UzGLQZFJKm5gU45hnNGx/rLT5h4kd
         Mzlw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=kS8fDJAq;
       spf=none (google.com: heikki.krogerus@linux.intel.com does not designate permitted sender hosts) smtp.mailfrom=heikki.krogerus@linux.intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1737030064; x=1737634864; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9TQ+1lLM3UaLo1bSS1pdyKcCg8xu1TNbZAD1KmLskMM=;
        b=McSv7A6tbLTwkF9j2OEcHmxo8hJceJJ6m5TCxILgFaxmiTExkDlc98n7Rb4Yl6D8i2
         Xt7WxV1Zy8Yycx+Otc8xb3mXRD285L6OS1V5SM2PpvWO+hejLbYxwpOXim8KKEtSP0KO
         TGLoGNggGfWPMEWb3JRjS0VekBlzm83qOWmMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737030064; x=1737634864;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9TQ+1lLM3UaLo1bSS1pdyKcCg8xu1TNbZAD1KmLskMM=;
        b=B2Ob4JKE+cHhdxts/o9pxybaM7ZaepFgPGsvTbBMPQiL2vhOTlK9ckeAVCtMDeb7+4
         razbdFP9i4Z9qlOOydpF501gzyEsfOaCXn+Tct3HuLEETFhPSarkkgbWgd5LrpC0IK7q
         5gHAqz3rB+9Sx3qlxG+vd/25mUmPr7n/Bh8mcwycfEatYNlDLXb1P5lI4kwkI51teBKI
         QLq8z6NpTjwIib5QtAIosUxgkizny2vlwZgTi4XBp893tlcogh/4/frffQsqURel/GMp
         D956C7ULnt/j3TbZ5mmrPKAc+2JiyC8IxBwLWMelM+PG5ZBRkt0QGlbcKWT9EMuBwzsv
         jXLg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVCZCgs68F09hcYYogP8hwNcHie1NzJcUX57hTA4OrD2jrtZcpLF2R83ueirvKqrl2fFNFscg==@lfdr.de
X-Gm-Message-State: AOJu0Yzm9GwaCA6MwmdjfZRtH8rL4iGocOdtxXi843H/O1ThKwh2I+GY
	JXUANU9gk+b+qA0TxX95U6abKDCz5Wm6Hntcl+wLu2pb8Viy+mmD4m5+bWGkxFk=
X-Google-Smtp-Source: AGHT+IEF2FgZuYzBn8GLvapfhCKctxZqD7+vZWaerpHW/RXyDeOvYvd7FFNumUzA3poixlWN1+Au3Q==
X-Received: by 2002:ad4:5bc3:0:b0:6d8:a127:e744 with SMTP id 6a1803df08f44-6df9b1ee76fmr282622086d6.20.1737030064446;
        Thu, 16 Jan 2025 04:21:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:47:b0:6d8:f92b:6d70 with SMTP id
 6a1803df08f44-6e1a10349dbls13994926d6.1.-pod-prod-05-us; Thu, 16 Jan 2025
 04:21:03 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVq4oFFn4hf0otqAabbEp3DbMVQ7DuzHCiZ0k5+OVx//IVHe/SJpHr38nJh0MsOivGp8HX5AMOH+LujLA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1992:b0:7b6:e9db:3b1c with SMTP id af79cd13be357-7bcd9761f53mr4040903385a.39.1737030063614;
        Thu, 16 Jan 2025 04:21:03 -0800 (PST)
Received: by 2002:a05:620a:821f:b0:7b6:d314:a4e5 with SMTP id af79cd13be357-7be5b6a04bcms85a;
        Thu, 16 Jan 2025 04:19:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVb5DsGOCrP+Hu2im4PDwdLNB7/fROXRWWo1a6I60Shli3sOZ3NqMOLsOlUnHCk6HfH343SWHSnxKYp4Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6102:3ec1:b0:4b6:1a4e:9ed7 with SMTP id ada2fe7eead31-4b61a4ea005mr23794700137.5.1737029982697;
        Thu, 16 Jan 2025 04:19:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1737029982; cv=none;
        d=google.com; s=arc-20240605;
        b=VBGyafMz8//MA4rH3dEEuwxOGXHxG41+3rHb3loUL6z11ATavRDFbjb3l5U2Era6CM
         tOiCdK8CKlfGYcn/kcZObMVssgZNR52h5vVzOIoIY/skOGCp0FuxypOA0deMx9v91yeh
         CTxWU6cOd6SQvRRSdZZzBj50fnLlj9ooKKsJ+fajes1cblTslqe6JgcztokEMUgmPVkJ
         dEqBE2c5OrwB8r0JhTCp2a/JY/IZud5ORzclP7aXTURrqiVthD/N72s8RNVqtp0thoWJ
         gY2HBDmlCTLfKgnVhDAeBi3iu98GmXWk5R5e2oc1dx0B6VvdbBpDQIGFZhYfMTe85DTG
         V0NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6dk3XYakNfaRFR7f35b5g5Bxnro/9CJ1EKU0J0HbgEg=;
        fh=LZh5MpMXGz5lahmto4b/lQlo5/M9+rridXTw52WLoMg=;
        b=C+klqvlmKubZB8gNetKU6SCP2tfx5VxgcVVREaRasQQwYEcgzOr0XEKIGpRk6hbWjl
         +vva6b/uY+x6yOLZ8W9Jw04JWzKh5sg7ubUap8rTWYngvOlHF6cN/D51TQ3BQYkp0FbJ
         76Qe8vnS7kJoNPzOmRDTojupYk+AAaY5s75jPLZfCMYOpA8k6tpOVnTvPTj/CsC4JiL5
         QiFN9WQd2F6kfBIKFFsnVOEFX/cWjovu8m21sZpShWrKNrCIrZKIpjy3Ka9ZuBa+DuWt
         dR3Wo3m4r9PddPdgt1IIXlLMG2gMv5uYuYd14XWYktH/136gsVVZ8L6p/ATZnUkJfmWE
         ur3Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=kS8fDJAq;
       spf=none (google.com: heikki.krogerus@linux.intel.com does not designate permitted sender hosts) smtp.mailfrom=heikki.krogerus@linux.intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mgamail.intel.com (mgamail.intel.com. [192.198.163.10])
        by mx.google.com with ESMTPS id ada2fe7eead31-4b6093e43a9si4520995137.647.2025.01.16.04.19.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 Jan 2025 04:19:42 -0800 (PST)
Received-SPF: none (google.com: heikki.krogerus@linux.intel.com does not designate permitted sender hosts) client-ip=192.198.163.10;
X-CSE-ConnectionGUID: w/xrhCsrQc6YZNuM3DlOug==
X-CSE-MsgGUID: IRvMHcVYRYu4LXpjNQUBTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48826993"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; 
   d="scan'208";a="48826993"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2025 04:19:41 -0800
X-CSE-ConnectionGUID: PshTnfDqRJGjP6FJ0IPmiw==
X-CSE-MsgGUID: WCUw1IKFTw+2cp301Oa6yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; 
   d="scan'208";a="110459258"
Received: from kuha.fi.intel.com ([10.237.72.152])
  by fmviesa004.fm.intel.com with SMTP; 16 Jan 2025 04:19:36 -0800
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Thu, 16 Jan 2025 14:19:35 +0200
Date: Thu, 16 Jan 2025 14:19:35 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Peter Chen <peter.chen@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 3/6] USB: typec: Use str_enable_disable-like helpers
Message-ID: <Z4j5V8ACfJLG-7Oy@kuha.fi.intel.com>
References: <20250114-str-enable-disable-usb-v1-0-c8405df47c19@linaro.org>
 <20250114-str-enable-disable-usb-v1-3-c8405df47c19@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250114-str-enable-disable-usb-v1-3-c8405df47c19@linaro.org>
X-Original-Sender: heikki.krogerus@linux.intel.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=kS8fDJAq;       spf=none
 (google.com: heikki.krogerus@linux.intel.com does not designate permitted
 sender hosts) smtp.mailfrom=heikki.krogerus@linux.intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Tue, Jan 14, 2025 at 09:05:36PM +0100, Krzysztof Kozlowski wrote:
> Replace ternary (condition ? "enable" : "disable") syntax with helpers
> from string_choices.h because:
> 1. Simple function call with one argument is easier to read.  Ternary
>    operator has three arguments and with wrapping might lead to quite
>    long code.
> 2. Is slightly shorter thus also easier to read.
> 3. It brings uniformity in the text - same string.
> 4. Allows deduping by the linker, which results in a smaller binary
>    file.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/class.c                          |  7 ++++---
>  drivers/usb/typec/tcpm/fusb302.c                   | 24 +++++++++++-----------
>  .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c    |  3 ++-
>  .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   |  3 ++-
>  drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c |  4 +++-
>  drivers/usb/typec/tcpm/tcpm.c                      |  7 ++++---
>  6 files changed, 27 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
> index d9d019cff01908eaa8dcb484a87147f3d9992bf3..9c76c3d0c6cff9c9b94ef35fb0cb4be0e395aad6 100644
> --- a/drivers/usb/typec/class.c
> +++ b/drivers/usb/typec/class.c
> @@ -10,6 +10,7 @@
>  #include <linux/mutex.h>
>  #include <linux/property.h>
>  #include <linux/slab.h>
> +#include <linux/string_choices.h>
>  #include <linux/usb/pd_vdo.h>
>  #include <linux/usb/typec_mux.h>
>  #include <linux/usb/typec_retimer.h>
> @@ -361,7 +362,7 @@ active_show(struct device *dev, struct device_attribute *attr, char *buf)
>  {
>  	struct typec_altmode *alt = to_typec_altmode(dev);
>  
> -	return sprintf(buf, "%s\n", alt->active ? "yes" : "no");
> +	return sprintf(buf, "%s\n", str_yes_no(alt->active));
>  }
>  
>  static ssize_t active_store(struct device *dev, struct device_attribute *attr,
> @@ -707,7 +708,7 @@ static ssize_t supports_usb_power_delivery_show(struct device *dev,
>  {
>  	struct typec_partner *p = to_typec_partner(dev);
>  
> -	return sprintf(buf, "%s\n", p->usb_pd ? "yes" : "no");
> +	return sprintf(buf, "%s\n", str_yes_no(p->usb_pd));
>  }
>  static DEVICE_ATTR_RO(supports_usb_power_delivery);
>  
> @@ -1855,7 +1856,7 @@ static ssize_t vconn_source_show(struct device *dev,
>  	struct typec_port *port = to_typec_port(dev);
>  
>  	return sprintf(buf, "%s\n",
> -		       port->vconn_role == TYPEC_SOURCE ? "yes" : "no");
> +		       str_yes_no(port->vconn_role == TYPEC_SOURCE));
>  }
>  static DEVICE_ATTR_RW(vconn_source);
>  
> diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
> index e2fe479e16ada018930ea0dbbf58ee37ce9a1990..f15c63d3a8f441569ec98302f5b241430d8e4547 100644
> --- a/drivers/usb/typec/tcpm/fusb302.c
> +++ b/drivers/usb/typec/tcpm/fusb302.c
> @@ -24,6 +24,7 @@
>  #include <linux/slab.h>
>  #include <linux/spinlock.h>
>  #include <linux/string.h>
> +#include <linux/string_choices.h>
>  #include <linux/types.h>
>  #include <linux/usb.h>
>  #include <linux/usb/typec.h>
> @@ -733,7 +734,7 @@ static int tcpm_set_vconn(struct tcpc_dev *dev, bool on)
>  
>  	mutex_lock(&chip->lock);
>  	if (chip->vconn_on == on) {
> -		fusb302_log(chip, "vconn is already %s", on ? "On" : "Off");
> +		fusb302_log(chip, "vconn is already %s", str_on_off(on));
>  		goto done;
>  	}
>  	if (on) {
> @@ -746,7 +747,7 @@ static int tcpm_set_vconn(struct tcpc_dev *dev, bool on)
>  	if (ret < 0)
>  		goto done;
>  	chip->vconn_on = on;
> -	fusb302_log(chip, "vconn := %s", on ? "On" : "Off");
> +	fusb302_log(chip, "vconn := %s", str_on_off(on));
>  done:
>  	mutex_unlock(&chip->lock);
>  
> @@ -761,7 +762,7 @@ static int tcpm_set_vbus(struct tcpc_dev *dev, bool on, bool charge)
>  
>  	mutex_lock(&chip->lock);
>  	if (chip->vbus_on == on) {
> -		fusb302_log(chip, "vbus is already %s", on ? "On" : "Off");
> +		fusb302_log(chip, "vbus is already %s", str_on_off(on));
>  	} else {
>  		if (on)
>  			ret = regulator_enable(chip->vbus);
> @@ -769,15 +770,14 @@ static int tcpm_set_vbus(struct tcpc_dev *dev, bool on, bool charge)
>  			ret = regulator_disable(chip->vbus);
>  		if (ret < 0) {
>  			fusb302_log(chip, "cannot %s vbus regulator, ret=%d",
> -				    on ? "enable" : "disable", ret);
> +				    str_enable_disable(on), ret);
>  			goto done;
>  		}
>  		chip->vbus_on = on;
> -		fusb302_log(chip, "vbus := %s", on ? "On" : "Off");
> +		fusb302_log(chip, "vbus := %s", str_on_off(on));
>  	}
>  	if (chip->charge_on == charge)
> -		fusb302_log(chip, "charge is already %s",
> -			    charge ? "On" : "Off");
> +		fusb302_log(chip, "charge is already %s", str_on_off(charge));
>  	else
>  		chip->charge_on = charge;
>  
> @@ -854,16 +854,16 @@ static int tcpm_set_pd_rx(struct tcpc_dev *dev, bool on)
>  	ret = fusb302_pd_set_auto_goodcrc(chip, on);
>  	if (ret < 0) {
>  		fusb302_log(chip, "cannot turn %s auto GCRC, ret=%d",
> -			    on ? "on" : "off", ret);
> +			    str_on_off(on), ret);
>  		goto done;
>  	}
>  	ret = fusb302_pd_set_interrupts(chip, on);
>  	if (ret < 0) {
>  		fusb302_log(chip, "cannot turn %s pd interrupts, ret=%d",
> -			    on ? "on" : "off", ret);
> +			    str_on_off(on), ret);
>  		goto done;
>  	}
> -	fusb302_log(chip, "pd := %s", on ? "on" : "off");
> +	fusb302_log(chip, "pd := %s", str_on_off(on));
>  done:
>  	mutex_unlock(&chip->lock);
>  
> @@ -1531,7 +1531,7 @@ static void fusb302_irq_work(struct work_struct *work)
>  	if (interrupt & FUSB_REG_INTERRUPT_VBUSOK) {
>  		vbus_present = !!(status0 & FUSB_REG_STATUS0_VBUSOK);
>  		fusb302_log(chip, "IRQ: VBUS_OK, vbus=%s",
> -			    vbus_present ? "On" : "Off");
> +			    str_on_off(vbus_present));
>  		if (vbus_present != chip->vbus_present) {
>  			chip->vbus_present = vbus_present;
>  			tcpm_vbus_change(chip->tcpm_port);
> @@ -1562,7 +1562,7 @@ static void fusb302_irq_work(struct work_struct *work)
>  	if ((interrupt & FUSB_REG_INTERRUPT_COMP_CHNG) && intr_comp_chng) {
>  		comp_result = !!(status0 & FUSB_REG_STATUS0_COMP);
>  		fusb302_log(chip, "IRQ: COMP_CHNG, comp=%s",
> -			    comp_result ? "true" : "false");
> +			    str_true_false(comp_result));
>  		if (comp_result) {
>  			/* cc level > Rd_threshold, detach */
>  			chip->cc1 = TYPEC_CC_OPEN;
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> index 726423684bae0a690bd20547313704b7d2f4cfdc..18303b34594bbf6f43d1138177c4ab58f0dec395 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> @@ -12,6 +12,7 @@
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/slab.h>
> +#include <linux/string_choices.h>
>  #include <linux/usb/pd.h>
>  #include <linux/usb/tcpm.h>
>  #include "qcom_pmic_typec.h"
> @@ -418,7 +419,7 @@ static int qcom_pmic_typec_pdphy_set_pd_rx(struct tcpc_dev *tcpc, bool on)
>  
>  	spin_unlock_irqrestore(&pmic_typec_pdphy->lock, flags);
>  
> -	dev_dbg(pmic_typec_pdphy->dev, "set_pd_rx: %s\n", on ? "on" : "off");
> +	dev_dbg(pmic_typec_pdphy->dev, "set_pd_rx: %s\n", str_on_off(on));
>  
>  	return ret;
>  }
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
> index df79059cda6755d4de35b7239fadc2dff2e699b1..8fac171778daf471fe4d03de8cc4f9c7ce1f323b 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
> @@ -12,6 +12,7 @@
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/slab.h>
> +#include <linux/string_choices.h>
>  #include <linux/usb/pd.h>
>  #include <linux/usb/tcpm.h>
>  #include "qcom_pmic_typec.h"
> @@ -38,7 +39,7 @@ static int qcom_pmic_typec_pdphy_stub_set_pd_rx(struct tcpc_dev *tcpc, bool on)
>  	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
>  	struct device *dev = tcpm->dev;
>  
> -	dev_dbg(dev, "set_pd_rx: %s\n", on ? "on" : "off");
> +	dev_dbg(dev, "set_pd_rx: %s\n", str_on_off(on));
>  
>  	return 0;
>  }
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
> index c37dede62e12cd8a105da108838b5ca4f5e632d7..4fc83dcfae643e7a8b8e89ac6e6f5a9aaba3f65b 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
> @@ -13,6 +13,7 @@
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/slab.h>
> +#include <linux/string_choices.h>
>  #include <linux/usb/tcpm.h>
>  #include <linux/usb/typec_mux.h>
>  #include <linux/workqueue.h>
> @@ -562,7 +563,8 @@ static int qcom_pmic_typec_port_set_vconn(struct tcpc_dev *tcpc, bool on)
>  	spin_unlock_irqrestore(&pmic_typec_port->lock, flags);
>  
>  	dev_dbg(dev, "set_vconn: orientation %d control 0x%08x state %s cc %s vconn %s\n",
> -		orientation, value, on ? "on" : "off", misc_to_vconn(misc), misc_to_cc(misc));
> +		orientation, value, str_on_off(on), misc_to_vconn(misc),
> +		misc_to_cc(misc));
>  
>  	return ret;
>  }
> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index fcf2d7902352c447651f30610d59fef2471f3124..ef2cec386d965512c64e8b7e640199e10bb7bc94 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -21,6 +21,7 @@
>  #include <linux/seq_file.h>
>  #include <linux/slab.h>
>  #include <linux/spinlock.h>
> +#include <linux/string_choices.h>
>  #include <linux/usb.h>
>  #include <linux/usb/pd.h>
>  #include <linux/usb/pd_ado.h>
> @@ -892,8 +893,8 @@ static int tcpm_enable_auto_vbus_discharge(struct tcpm_port *port, bool enable)
>  
>  	if (port->tcpc->enable_auto_vbus_discharge) {
>  		ret = port->tcpc->enable_auto_vbus_discharge(port->tcpc, enable);
> -		tcpm_log_force(port, "%s vbus discharge ret:%d", enable ? "enable" : "disable",
> -			       ret);
> +		tcpm_log_force(port, "%s vbus discharge ret:%d",
> +			       str_enable_disable(enable), ret);
>  		if (!ret)
>  			port->auto_vbus_discharge_enabled = enable;
>  	}
> @@ -4439,7 +4440,7 @@ static void tcpm_unregister_altmodes(struct tcpm_port *port)
>  
>  static void tcpm_set_partner_usb_comm_capable(struct tcpm_port *port, bool capable)
>  {
> -	tcpm_log(port, "Setting usb_comm capable %s", capable ? "true" : "false");
> +	tcpm_log(port, "Setting usb_comm capable %s", str_true_false(capable));
>  
>  	if (port->tcpc->set_partner_usb_comm_capable)
>  		port->tcpc->set_partner_usb_comm_capable(port->tcpc, capable);
> 
> -- 
> 2.43.0

-- 
heikki

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z4j5V8ACfJLG-7Oy%40kuha.fi.intel.com.
