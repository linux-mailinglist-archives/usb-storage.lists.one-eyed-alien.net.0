Return-Path: <usb-storage+bncBD6LRVPZ6YGRB4NMYCYAMGQERXI3HJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F73089A0DC
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 17:19:14 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a79485959csf2586225eaf.1
        for <lists+usb-storage@lfdr.de>; Fri, 05 Apr 2024 08:19:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712330353; cv=pass;
        d=google.com; s=arc-20160816;
        b=YNmnmb8eb0adBxmqdctVWB1/5iVoWHLiatxzpVd7qPyQ1YBxPl9gHeAn7EQWiK2Xd8
         zQZOh+3TEwKpAoJnmO1ZdJB1gIljR2OGRazqLcAUP4aU7l7AjIgmUQE0c57bRD/AD/zc
         9biXM+kXApP75HhmwdWpUf0paIMlgY+/ikzgAdadsKvdkkG0MW32w7kn/13F2JOFMxT5
         DeU1cc0uCd6YGPoe3juY2fm0CdqNQ5GPSW8nCY+gr6lPqFAEKbIh89F1MbSNQhynoQzU
         HjMd6ljB0hEjavBbABmz/icIOSYDVqYQvGamkjNBZkKbQ0ly1izsyEeNvHke+XbtF8Yr
         V9FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=j9fRwfj40ZOT/ypqKYIq20RUsNTWxrH4mXTDLfKkXIA=;
        fh=1+TajFVlYIOLlnVPSrNVTP3MEXChu8OB/kfhu+s789Q=;
        b=y6k/ZE1xd5YpG57nYjHGos4w7Mya43TtIJo+BZ3Gymazmqy7kHKg7JVOqrYGR2jA0I
         lOITfxte/+lij/5Zxrn9IJAMDW0KpZ+SJGrCBqSk4/Cicsos02MwKBsNH3gBTkk+GKzj
         KZujnq/22iPpyAthDmU9yquHdfFf6vfE8EL8qJtn22OOlYvG0qe1chy3lAnEHxhcT6Ta
         B9ICDT3X0F2zGh73qof7ye/3ABDi+BMKYwSHvi6TZXIfEkj7mKxNebjmQJpTwtNgNf8R
         p11rxljV0iqsjMav7qPSJ19zMY67mlr+Rvu1wux0r3DIpKxaefjlHmnGiR2hv8ZC+Wj6
         BqMA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712330353; x=1712935153; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j9fRwfj40ZOT/ypqKYIq20RUsNTWxrH4mXTDLfKkXIA=;
        b=clp9K21qL7EMJU2/BYuc1NyykHJsvl+XEjYxAh5JT2Fuc5zOUri9a69N01Jml+vv7c
         /bVHm3fdG3ZsX2Oywgl5/sT5zZsa+fJqeO/frBfD3nU8x0GSgTupkf3gZyXN/xljZR9/
         T0ZdUCL4fXpt21Memq47F/1QEzNuoOJrm5aiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712330353; x=1712935153;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j9fRwfj40ZOT/ypqKYIq20RUsNTWxrH4mXTDLfKkXIA=;
        b=THLT4LW7CBLv/sBH63+kfWgTD0tvSkB/JQOkpKzszJnehgDoUHCKtJzgSNXZCYcUUh
         +TG8Tpjcem1L+dNmda00EG163dRwao4mmwwynkTA+OtFYMXDvdChtkn0g0eMCKfOiYC8
         2l71ld4aoSgmlYWvCJTEdB+8PFj+k2I4QEKuAEiXPLQu++I9IJyNSBgzeTJpdAEQyPmt
         reP8gHayDKjT9MNZL/8qdfaUvGW7bULCnziSZ0dwMAq2xEIbkpyX8HPZf4PYVehY2Dct
         BzYCvF+nrQuvfIQg7C50kIUof6AF6gL8j1EpVl5oRrVu6NTGbmOdAXVBch5fPwG791eW
         gkjg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVsi96XEvF9s72m+xCVNWUtKP/MiZf9pLs8xPb4UIWqg7BoNCPhRP9gT1l7uE3+2ru3hgNkSdXJdH/yLthm+6BCsKdMdxBK2aIu
X-Gm-Message-State: AOJu0YyEyt7C8EJgOazSlaONDCkg6e9X3f1CbViulLGpVI6LNgVRutk1
	EQ5ok8rzzUOOtjVNVjmmzKS8SbrxoB++R84nffgv7TeSoIjWUTDXRiDKc8d9jnI=
X-Google-Smtp-Source: AGHT+IFSmmnY36ysuBoD/5ibI3GB05cyoo4H+ik8/9DFJI3XmBM/aMrgzB0JsCWHlxPOOHRGQmOupQ==
X-Received: by 2002:a05:6820:20f:b0:5a9:d519:b541 with SMTP id bw15-20020a056820020f00b005a9d519b541mr1681438oob.4.1712330353177;
        Fri, 05 Apr 2024 08:19:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:1b90:b0:5a4:c3bf:af31 with SMTP id
 cb16-20020a0568201b9000b005a4c3bfaf31ls88992oob.0.-pod-prod-08-us; Fri, 05
 Apr 2024 08:19:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXiYowBNgk8qY+26a9HlfuopgzO7nAKnM61xNxAAk0zXpRwCOPbtfInAmqKQ1+Y0Ycvy1ElJJSQYrzHerHfAPIQN0mX3JmpilFkNKbY6rD7ua+UlYg=
X-Received: by 2002:aca:1305:0:b0:3c4:dac4:cb75 with SMTP id e5-20020aca1305000000b003c4dac4cb75mr1837696oii.15.1712330352405;
        Fri, 05 Apr 2024 08:19:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712330352; cv=none;
        d=google.com; s=arc-20160816;
        b=q2u3VCNDOKs4YWc9rTWF1of99eHqZ0gRZlUYDQ+JGp1L8ByJ46RP4o61c+eglf/5l5
         TddZfRq5Y+AQvtpM+B14Y0ZCWSVrGQfAMHSWTzTcOW6Jzhs6tk5QD3lRZ1bwYfJTw67N
         sAZBb8lJvGt2mILXkMy/38/kKRbGX5/prE6/wsJ+ruJlR9pB2794hG3CghlDMdJBrd4a
         xPuLSCKocmheoSEDAxRMIQPHJW9XkrIk97uj/CCZR8Ki+V6qP2HZPkuohZ8jz1eCMebd
         J8VRoGx7+FYaEeyD/+krpzypp6lZYvBwFsGBqd95WCOF5pJNyHKBZZVUCJLK3AYK3Fe2
         tSdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=KSlGUnKKPA+NYXquu1k4JruBm+/iNgq/oaJr0v/tLX0=;
        fh=UJ4LDYRNjHC5PqXcNVNrNGlnLda3xNjJtuv000lWInQ=;
        b=oap+LbTp8e7MS4DMkUnz70P8aGsWruKq5wS+NXHGe7vXFT8WnPvlBYwMbtHb28wEBU
         Wa2E1P8t5CB5usUO5hnRWQQ1ZLpQroN1fqMwfryFgUiLPtn803aL5LKGxKdRmLGGW5qL
         6jdyxIohVs/wxnZfVkvAeSzg3avzUGLvuaSnUJhGtrfvC1qoHVF+HQA49OcYOQCUhOe1
         zW9gX2xqP2aDILfFmLz4Fp2egnu9q0zFgSLiCNpLAfcDau05WX+x6f+J63JNbUzDkCOr
         lIoVv30mwaF0pNq/jHuXrZvqjfWHehOWbarpEuJJ+sCKLcH2/qbHmpit/I1nPPdNHZJQ
         VEag==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id bp17-20020a05622a1b9100b00432c49655ccsi2065527qtb.77.2024.04.05.08.19.12
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 05 Apr 2024 08:19:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 49387 invoked by uid 1000); 5 Apr 2024 11:19:11 -0400
Date: Fri, 5 Apr 2024 11:19:11 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Cc: mdharm-usb@one-eyed-alien.net, gregkh@linuxfoundation.org, corbet@lwn.net,
  linux-doc@vger.kernel.org, kernel@vger.kernel.org,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Optimize scan delay more precisely
Message-ID: <d1f64a80-99e2-4d26-9187-2a4ddc8b8e6d@rowland.harvard.edu>
References: <20240405021738.13577-1-Norihiko.Hama@alpsalpine.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240405021738.13577-1-Norihiko.Hama@alpsalpine.com>
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

On Fri, Apr 05, 2024 at 11:17:38AM +0900, Norihiko Hama wrote:
> +static int delay_use_set(const char *s, const struct kernel_param *kp)
> +{
> +	unsigned long long delay_ms = 0;
> +	int scale = MSEC_PER_SEC;
> +	const char *p = skip_spaces(s);
> +
> +	if (!isdigit(*p))
> +		return -EINVAL;
> +
> +	while (isdigit(*p)) {
> +		delay_ms *= 10;
> +		delay_ms += scale * (*p++ - '0');
> +		if (delay_ms != (unsigned int)delay_ms)
> +			return -ERANGE;
> +	}
> +
> +	if (*p == '.' && isdigit(*(p + 1))) {
> +		p++;
> +		while (isdigit(*p)) {
> +			scale /= 10;
> +			if (scale == 0)
> +				return -EINVAL;
> +			delay_ms += scale * (*p++ - '0');
> +			if (delay_ms != (unsigned int)delay_ms)
> +				return -ERANGE;
> +		}
> +	}
> +	if (*p == '\n')
> +		p++;
> +	if (*p)
> +		return -EINVAL;
> +
> +	*((unsigned int *)kp->arg) = delay_ms;
> +	return 0;
> +}

I don't think rolling your own routine like this for parsing fixed-point 
values is a very good idea.  On the other hand, I can't find any other 
code in the kernel for doing it, so it may be unavoidable.

Regardless, this doesn't seem like the best approach.  The parsing 
should be done in a separate routine, and it doesn't have to do all the 
work by itself.  For example, it could copy the input data to a 
temporary buffer, leaving out the decimal point and padding with zeros 
on the right so that there are always exactly three fractional digits.  
Then it could call a kstrtouint() to do the rest of the work.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d1f64a80-99e2-4d26-9187-2a4ddc8b8e6d%40rowland.harvard.edu.
