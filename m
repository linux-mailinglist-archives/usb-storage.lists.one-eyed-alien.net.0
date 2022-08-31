Return-Path: <usb-storage+bncBCUJ7YGL3QFBBJGGXSMAMGQEF2KORLY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C535A79A7
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 11:00:22 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id m15-20020a056402430f00b00448af09b674sf3802863edc.13
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 02:00:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661936421; cv=pass;
        d=google.com; s=arc-20160816;
        b=JesU87AF76GECYqBaRLiW5hLjvtZwCP3w7rwRJ+1HuME30F08+fgSA0k6qH5AXzHGk
         BIATuDFV+F4WR+M+AlmZgjYExTEVh9w+/sT/le+EuVND7bgXlcMnuOqQlEoZK+uzk0Vf
         C/yDkV1K6JHaNgy39MNK+FvdjHB66GdIbbQ5yvcBw9I0u3w6ro+ceE7WexXr5qZuUXIp
         lA4+JDMgk4YhP4KqYtLKTbkoiJ0ZL/l7fjV3q0pOsLHrE+OkBD2yixw2lR7agexoLZbF
         IZ7YrXhFpEFKuKd9PPx7JsEWff/HzmAE2L8rt2aY9ssWjfgvKIMZQCTHzcOPytmgiQx4
         Gvkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wQO9JtMta0a6ue21b+5EKEsdVdIcXi4TyS9cX80S+Wo=;
        b=Tar9GXPhcjlTXIw7FeolVOduZKgdp+MsX1PPAZ2cFHDbsiYJsqZOtjAuze3MzLjWCB
         m9YCnqm75kpehN4o1yolgIVMz4rOinxytOhkuWK53O4cDa4yk7mNdwf4w3hugu84dhk5
         aN/cY+c1j7V6fiE+aV8+WQr5dbU86Oo8fDSRpsaUqItxt4+VdAI0NsPY2Bn7IEZdtUI8
         NbuhYg/b1hD0RE4iCEYUmN98hUKti6BEC7OM6gL1IA2W5F2m88dK9IszfTOHvW6e45RW
         6EoPDQX/NkPQO2nipe6gcCX8r8xDYr3PkhFYbzBE3anABHF0ccvCA9Sd7LclZsxbxWVZ
         nJJQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yswq0GcV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=wQO9JtMta0a6ue21b+5EKEsdVdIcXi4TyS9cX80S+Wo=;
        b=VhS5LxOYsNUNcN/25NW721cT4/fvGDYq7r2vJJ77FpjAS2YkOSUs4v3yJZPDHkr8uH
         zMYdX1BCMiaXkojkc0YcMSKcV8Z9UKRQlfxuB3noGGjEsPKi3dK5PQLVRl0kRHi6PUYF
         RGO+FAJvs+a6AqwjN69g2waB3+cr80EO+G1OE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=wQO9JtMta0a6ue21b+5EKEsdVdIcXi4TyS9cX80S+Wo=;
        b=QYexYfaQ1M4XbVk5yXRYEs3J3AKW2Iie8AyY6TOnNRzdAa8fkr6p/lQV0bFDtShxHq
         iuFw0ML1iQX6BSFLCbzvwptwNiTPNrc3jsLL7k+TNM2EZLMmwbatvdpu7MVqeCga7U+Q
         Y6DqvkRtpkqN5/OyN1m0vj53Vx0e/kTToO4gxHxyjupT+DJhjQ2YNIjejar/jEXAqDjL
         rQS8AD3N3TYIJkPLNhZfDBYMRirQM+q70Z/aCL7GoesjMc8w7jW2bQnT7cc6xT9Zc5Fb
         WQwyH2GXRbcgra57odNUSNBV22Q/Ahq4fadcgVbKPpk2d9OYZxqPNWV8+aUOBLvCh8cX
         Y+UQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo310rSQJ1Elk/KfkYKiW/w5XcFUQv9nWj0VfSUOboqFnyXrjEay
	SisPQTYL2kTVZIjS1dyRidKwUw==
X-Google-Smtp-Source: AA6agR6nlTkueU1Iui+rMMccvbCfg2dSPsno4u8SAV5Y3WT/8ZN6OXTQTrMLgceYPXfQFMi4+ea9fA==
X-Received: by 2002:a17:906:68ce:b0:73d:ae1a:7803 with SMTP id y14-20020a17090668ce00b0073dae1a7803mr19585032ejr.618.1661936421478;
        Wed, 31 Aug 2022 02:00:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:2805:b0:447:ec6e:2ee with SMTP id
 h5-20020a056402280500b00447ec6e02eels4896334ede.0.-pod-prod-gmail; Wed, 31
 Aug 2022 02:00:20 -0700 (PDT)
X-Received: by 2002:a05:6402:5002:b0:444:26fd:d341 with SMTP id p2-20020a056402500200b0044426fdd341mr24304382eda.351.1661936420005;
        Wed, 31 Aug 2022 02:00:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661936420; cv=none;
        d=google.com; s=arc-20160816;
        b=k+JAEAp87/SSA8UKerL1kDUMl2KXg1T5tHM2GElXukWNOWuOQKraJ8M7Lqijeq8k5w
         N9j2vMHz5bJJUGiYphqbcnVIQpK5aiOVStvWFkqe2etTzjV3n6WP0fCtA5s4bjHS7hL1
         24pp6CKP74UHLBypKVV9ODCslUvat1a56j1nK/yH2+LV+ZHMqga66mnsc0CzEkoaDunK
         8iOXCMWqRqYw4D7VHfq9XFMgXHzEI5xzALCxZQFAYQJDCwsxJK6d5wJI7+t26KbmV4tz
         VGbHIT6wdz0qeUoCnvw3HVk10agucr8a4NqZX3pggKZiNCg4r1gmvxx+Q0JnHCeK5/yT
         EsSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A0Gzzl+eNxUEZjOmqh5TLiQWLtV3P+3qTEM8hDb9gQE=;
        b=nRlD92JEdsqu2NdENlT/tBs1MREjarnDNoZct8GrmCU2yupq34gwI+ivL8lru1GEGb
         EbRJDwlmDNrjIoOg0RLbrroyoQZ4tPeWrEO0hLLOmaaax8XblCjESsJdRBSoDw91blUA
         JLuVd1PRkYiJcCvPDt2eQnKq+Cu/Jomo5YcdJewZV5GmHa1ERcvfqXbbDuKi6F9jkzTs
         tlEfsDzYsrNoju9TwSlB3wOlkbaKYultX79S3XU0yWzGnEOlvu/ZuR9yOcK9R0Es1tBV
         fwNLxc2qZRKpx3zdAOcjAK+o1b/lV04cycpTzYv28oJWcmIJyHZZUWlVJZWXRV2MsIbT
         7H9A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yswq0GcV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by mx.google.com with ESMTPS id gx12-20020a170906f1cc00b0072f703af475si292108ejb.924.2022.08.31.02.00.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Aug 2022 02:00:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A4B69B81FAC;
	Wed, 31 Aug 2022 09:00:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5662C433C1;
	Wed, 31 Aug 2022 09:00:17 +0000 (UTC)
Date: Wed, 31 Aug 2022 11:00:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: zhongling0719 <zhongling0719@126.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: Re: [PATCH] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
Message-ID: <Yw8jHrmmtvvJuS3R@kroah.com>
References: <1661930031-21908-1-git-send-email-zhongling0719@126.com>
 <Yw8MNa3vPEtkIQsj@kroah.com>
 <44784fcb.4c24.182f315bb79.Coremail.zhongling0719@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <44784fcb.4c24.182f315bb79.Coremail.zhongling0719@126.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=yswq0GcV;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Wed, Aug 31, 2022 at 04:47:43PM +0800, zhongling0719 wrote:
> Hi all:

<snip>

Please do not send html email as it is rejected by the mailing lists.

Please fix up your email client as the documentation describes, and
resend.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yw8jHrmmtvvJuS3R%40kroah.com.
