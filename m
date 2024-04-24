Return-Path: <usb-storage+bncBD6LRVPZ6YGRBIV4USYQMGQEM7QXDIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id 741CA8B0D67
	for <lists+usb-storage@lfdr.de>; Wed, 24 Apr 2024 16:58:43 +0200 (CEST)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-dc6b26783b4sf9885514276.0
        for <lists+usb-storage@lfdr.de>; Wed, 24 Apr 2024 07:58:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713970722; cv=pass;
        d=google.com; s=arc-20160816;
        b=wMtVY83RercUHG63tZx4oBqIT6O7JTi3WxsYa4TkNpxiw6Eqy2pd19PHHIL1MIvq1W
         u591Ln9FwKd9zwt3W5hGunCC5VqS9ECi61cqf5CsvrmRPnxRTOuh8OvE4bai/kZ9hk2Y
         2rCX6yLYyhAwzOTmq1u44xg1YBMs8EeoeGY8zlXKS95kFCEwU80sb6nCyorzcZCS3INq
         zFhDaqioU5QZ8VA6+uEDj9ssMGXqxfp4tOGzwzAGhgMDMhR2jEl99YkxTOaSzRxen9PW
         PjuLjbcJZifPZDxbw/RvAlyjXogjPx5YCO5+eQibd95S3C7Qgw7hL9b38YoY5iQS6Mj9
         A2hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uFURo4oH0vmLBkS1txkk1pWVqqxtJdwnCBR57G9a2Rk=;
        fh=iekGghZsWe5jBDSiNK80zLKIrzuVHbwdSG4KArA3DF0=;
        b=Y2KKSekVUDUclTFILq/U2vv7EG2Va5uNnbV2iTyDSqtWGbzCwlCDIa3XHoYkk3FQ2l
         34z3r6usYHeeFn2T+r8GUJnC7J3RCByx3+ys6mLgdHmgcbaJwBVPW4E8HVHwy3c3DNpW
         K4dFnq2e0g5ngPGWYQwTuIYZtBZ5cNB/HN85ymYGTIaoNVlrNH7fdq22kHvRu9E7aSxj
         6gHIi5uc/2IZUPcv/pxkav0TpAdf+q73BowkXoogIPdY607SCij5yndS6UoTIBC7gdH6
         sdR84lhTNbrdjHJzF8Xvgxk8L9e7Fkcb+jutAoVk6qaccy4tA+Z/8HnyxqnIV87lWaRt
         ldNA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+66302a62@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1713970722; x=1714575522; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uFURo4oH0vmLBkS1txkk1pWVqqxtJdwnCBR57G9a2Rk=;
        b=iMWseYfRAiofU+aAormeFrKOUgfNHTHw77s2PLK2oEEHdc9UbPwFKiC9S3oabG34+3
         /ff6mEcUji3sQPiA/LRdNZEwKwmhBm8TLy5ut+4MpYNcZE/9T+VzHdWIBE1m/F2M0m3y
         GXpCJnK082DXUdvE4jwQ5k4JpErP8TL+akIZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713970722; x=1714575522;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uFURo4oH0vmLBkS1txkk1pWVqqxtJdwnCBR57G9a2Rk=;
        b=gKlS2Pow/i86Yj7nqgJtiHdwfQAruNx2fBkAzBToJ4Egsv0ERvFtGZ9SjfmyjiT3V0
         b2hdLgkDfuVLRDWrn0BLC4H8+iEKOFatuf4YSk6/2q0B/SxxzNFreYDS5hprB4Rc+Ih1
         RnGHLzIsmwrCnfkE3VT2Y/utyMGu9Ce//mv5oSKl9bWUwMlnyXnr0eTEAV0w/0hCC14X
         um6xvBduR64xorFMn9s/3zFmL2+3Pa/ZTB2W+9ldGt4Y/RVGljdnyFVqltQzI41QppSc
         RnZ2z9mtPyFv8VGKuYmlDGEz+HV+KSgYDH0w3vflilaYWCf22PtBuho0e2OP0WJJtxIG
         DkoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXoa2Gmhnm6VcOQWOAKL3T5hC2nK4BbYEqQSfarFjFLV2wPh91BCZoUpmHMZK3XstdBDH7aTRUVLpHP7SxaZY9ch7sr7RxtM7rJ
X-Gm-Message-State: AOJu0Ywi9YRlCWcMtCcXR3k+7XaIblhstIJqHMvYO0lrWf8SZbPica80
	RSaO4YMxS+jRIw0dwJpieM0UxlRb1i+WKmPcEcMGE5/f8oZM5NE3KLIv+zJbP6o=
X-Google-Smtp-Source: AGHT+IFAUgdVRFSHLVrLG7f059zV0TSAlF5WyH2N4htHlUQUub4SLco3JeGTwJnsy2fGso8gnksHzA==
X-Received: by 2002:a05:6902:54b:b0:de1:849:a6f3 with SMTP id z11-20020a056902054b00b00de10849a6f3mr2417677ybs.7.1713970722389;
        Wed, 24 Apr 2024 07:58:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:7441:0:b0:dcd:202d:6bd6 with SMTP id 3f1490d57ef6-de480591acbls1211501276.1.-pod-prod-03-us;
 Wed, 24 Apr 2024 07:58:41 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVpPDQU+lHvT8S96UWi8az89NXNTz6ENMm9QTchbujHCKU2RnaEaXUjgfvd9I7NqKgBnfGiiF498L3xXW3NCExFfmjGrmkr8YcIcY+pTFSQrXVnxxc=
X-Received: by 2002:a25:94e:0:b0:dc6:ff32:aae2 with SMTP id u14-20020a25094e000000b00dc6ff32aae2mr2538904ybm.63.1713970721304;
        Wed, 24 Apr 2024 07:58:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713970721; cv=none;
        d=google.com; s=arc-20160816;
        b=miMF3995yijLLR3MsuZ6XZgdKXvYMSEBExESXHK5m/B1Fm8T3+oNgKNMDNyy889s63
         XygUPe4ayvXoo0u2/emjcU6qYPwvdneiDlXsmj5eCIVbL+yJAFYlRzObJZtkeegkVnz+
         bU95OG8eAFk0duwkGzXyyDbqiHWfvpCgUeXarAb2XdJaDluMDUwq+G0EMdUvgNhei5Up
         6egiQlpL5mtFtli5uIituAMxU+Q6c1DGWfbRHZzNRE42v2HZNFCAjZ/3xKnuY9ZyUZQS
         UlFuWD1nNV4ngln2Ovy5iRda7zDzHDw6puaY3ltEMJ5j07rObsjrWXES3Xl9SHAgaQTO
         1Owg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=7zvqyiiuiGDjZ9keCaSIxbaOOxFRADBQk6Q6SxQ33bg=;
        fh=FqUVr371cc1tTqxoDZir02HaIRYiJLTekm+ByvbbJgY=;
        b=fZGSznefurpU1qTBxc+Oj0cs96R6QxdANnMUpk9b1Zb3W8NwpajWCrJXRv9Y7ZL1dv
         Zd3igx2qjWV34f3hcgFGQpP6Vyewl4XkaZ3A6nEo0jyGagXvRkdaMVFljqm69Pt50SSu
         4plwcvp8H/XQu4u+k/hLd6BOheMd3bhddq8Y+15vJVf/is3LUCQLePac2hf/NmjAYx9n
         8rvy4tO7U9Vh0S9Cbybfq+kMMnxAn8n1th7NkyZWU4K4rZKn5QHIP0kY9v2184Uwodqi
         5xSKyaTPkJv86Pf65I2GxVxdGaKaFeJuxnRHjrlXity20XLr+ne2sdzSeh+nOP8yc/SD
         JiNw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+66302a62@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id 10-20020a05621420ca00b006a08d4aaf7dsi3941820qve.336.2024.04.24.07.58.41
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 24 Apr 2024 07:58:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 453580 invoked by uid 1000); 24 Apr 2024 10:58:40 -0400
Date: Wed, 24 Apr 2024 10:58:40 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Cc: gregkh@linuxfoundation.org, corbet@lwn.net, linux-doc@vger.kernel.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v4] usb-storage: Optimize scan delay more precisely
Message-ID: <515c273c-9bb0-4830-a3a5-e9a485356434@rowland.harvard.edu>
References: <20240424013134.17307-1-Norihiko.Hama@alpsalpine.com>
 <c06aaaa1-a2af-47c6-a615-602f2c70de86@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c06aaaa1-a2af-47c6-a615-602f2c70de86@rowland.harvard.edu>
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

On Wed, Apr 24, 2024 at 10:51:57AM -0400, Alan Stern wrote:
> On Wed, Apr 24, 2024 at 10:31:34AM +0900, Norihiko Hama wrote:
> > +			Example:
> > +				delay_use=2.567
> 
> This could go on the previous line.
> 
> 			Example:  delay_use = 2.567

Oops, this shouldn't have the extra spaces around the '=' sign.

			Example:  delay_use=2.567

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/515c273c-9bb0-4830-a3a5-e9a485356434%40rowland.harvard.edu.
