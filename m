Return-Path: <usb-storage+bncBCUJ7YGL3QFBBR4GYKMAMGQER4OCR6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA7C5A93D5
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 12:02:48 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id s19-20020a056402521300b00448954f38c9sf6858766edd.14
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 03:02:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662026568; cv=pass;
        d=google.com; s=arc-20160816;
        b=TfhZ+4cWZ8xl6R5gx+KFLs8Rd+QKbZrdVsZl8p3aNaoPVKLh/xHF8KqEpmgn5XI9zH
         50s4NHV6xKxKZff6fy3Dm+w+v3w4LEr8faXJ5WO2cMR5YhwpH3ep8NcG4dyCNk/ERAOL
         eqCmkhFPkTiWeGQUEKwmqKx5gbFbOhkTtgsh84Mz20VyNVgmx7O/uknOogecTwsn8U2c
         rQl9DLdsJi9d5c9Vt3aspAOU35M/ID31vIeKG/46edPeNkxVerVdhl3FYN/dmuAkww/4
         bOQERtLNOyH00OTAbyyciVcyDlc3sV6nx8dc8Ogd77ffCM0xN5aQ3zpfXpVTwzRMjQzd
         nMRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9Q+Dq5El1+c/+qbze0g+KpYIkzByBFYxpXG8P7bKzaQ=;
        b=dYwwzynn9eDEmEfknb31b6m66HsUINmir26ss69Q4xvNi5K3J7hm4+F/hj/iVa+h92
         OrrSVC2CnNkGqVtbh6unM+El2+dBHVI6tuUrCUZXv3xIUNR0PiJ+rnT1tt4CJzcfA44n
         PW80wFW5VNTwX4vGbynWv2fYzJrQ9luGmLwykqVk3rrrefcrv2Tqb3l0DvriHuL5EcLq
         BcQE3Djli7VEuorUMTuMO4OGWuAhR9M3R14z0s/4/+F7sCHRLpIPdlZA84KWjQ46yyWO
         qQg5u/j5+9k0VXCwqPoGUsJ+/4irDvqNldJMyCrDSmecyqR209J7bBH0M+cujfitehVr
         8X0w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1mBbkIiT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=9Q+Dq5El1+c/+qbze0g+KpYIkzByBFYxpXG8P7bKzaQ=;
        b=Bbko9uziL6HC5QjevE/AjxSuLwykLPw0fH+4trNCOy1w9uf005Od6cs8gFgTjyLSil
         HIzQJw935XXHn0sxNgs2liC/04WNFoj9bInfKarGbezFrVEPfmRwlCmQzripd4kM1kaq
         lYDMjB2nTwOEhtfea0c60FQ+ExA+gMD+QWXFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=9Q+Dq5El1+c/+qbze0g+KpYIkzByBFYxpXG8P7bKzaQ=;
        b=Qf11MqU7NY4a4nofrwT4IzXOFmbdwI5OOZnQZM9bqmtpi0kpCLvo+IUBAzSm/qhYXo
         HFlvoheGlTkFIu3uROtVfL4U9MQ8suNmOvGF5xX/OU74bQcoio7WFXsCymxF7RP6pejS
         SBxy4UXoOT8t+I5pGm3WLLxEIqIuEJ4u+vsCwebxhydARdPNR4Jj0XhjX8Y3uCNx1upC
         vOsPg5Q3BAnvLF8uAT7zXqAilRHxCw7e44gEw2BT04SzkPaXfMyGoV+OjWp/R6JiXnpY
         Qal94gygeeEtsrc9ILLMsG4Gtks6DkfYGGorjtgRgREd5MraQO3PDz/UY51046wq70mh
         trrQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2z1U58a5kNdGloYWxuzTGV7xkD6aWSAfAe+u6POk0fGuPxMPu8
	TL0gL8N7TRLbgJn1+On8KlVQjA==
X-Google-Smtp-Source: AA6agR6NgMSxBPOXxLVWfHb6USE3c2QvATT8S5qBN0KlG3z7J2E8EnpkDw9aVd87hkjrJm280UF6JQ==
X-Received: by 2002:a05:6402:1c84:b0:447:9d79:74fe with SMTP id cy4-20020a0564021c8400b004479d7974femr28518994edb.378.1662026567966;
        Thu, 01 Sep 2022 03:02:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:26c8:b0:448:77f2:6859 with SMTP id
 x8-20020a05640226c800b0044877f26859ls520015edd.3.-pod-prod-gmail; Thu, 01 Sep
 2022 03:02:46 -0700 (PDT)
X-Received: by 2002:a05:6402:2791:b0:448:763c:666f with SMTP id b17-20020a056402279100b00448763c666fmr15430989ede.36.1662026566713;
        Thu, 01 Sep 2022 03:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662026566; cv=none;
        d=google.com; s=arc-20160816;
        b=gpXxK6S4GIQ67DIG7pfZSD0Lw9FoI/FfBB40UE7xfc11afqMe294JJl/W3JvTWGcpH
         zCfLrQWcSn1u7yTyDAdQtPTQVbl2umfgVhB6PRc/d1UiVLQ32OeAeMUWJgv1YCzCvd2V
         McoPjm7/w7DwwGB9ONjVN+/ZIGEY3spCBnTCExHDcBmh9cq7gGq65uR+a4thrS7HPV17
         K+ze125GEOvZSOqcICnEpJpCICzd+I2OEhGGY5f1eshlbx3XCngzgO/LJZ49RyQqvOgk
         Dq/iDS+A4XlXjfKFWxZoLB2U7zEfEAxY/zvguW+bJvUCUo8WVqsZL1cqRTHqzc6ORx/F
         Rt8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=45DSY3xPoOwg/iyKAJpPMQOatHzInrzxLnPAAX5Zdbc=;
        b=aDw0Z+oYeSnv9rZknzWmmcFuLAGjvvTucGKjOyrVR5CvGBOqbVidpC4UfmJTiWnx5W
         8gMKi5GZ000Nh45Bl8X1axMw2U069ULzFmgH0EE1u983KybMvGpyu1dti3Do0G+NZnx1
         C2AJTpWKPDjdAy56i/pWT74jgVQFK4ttX+9ORo7IBLhStStaHzlt3SQnlNkp1UjnOttB
         ZAa1/wsCjUkksRP3bxEjqMuuDByJi51RHm5fLUBfI0d8VPi7YdptJmzgXZbc2mXlFTt3
         AvakDe6LeB0SvbheLXA6QeKNjbTPgpAyUxBVD65JTkklUR7KVWq2BjuSdvEpYdxSc/xC
         MrcA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1mBbkIiT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id m3-20020a056402430300b00448b72c6f0esi1458080edc.301.2022.09.01.03.02.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Sep 2022 03:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 56ABEB8253D;
	Thu,  1 Sep 2022 10:02:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB498C433C1;
	Thu,  1 Sep 2022 10:02:44 +0000 (UTC)
Date: Thu, 1 Sep 2022 12:02:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: dd <zhongling0719@126.com>
Cc: zenghongling <zenghongling@kylinos.cn>, stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
Message-ID: <YxCDQi3TpXbcwCQ5@kroah.com>
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>
 <YxBvNEn0jEEd0lXV@kroah.com>
 <409cbf8b.5b1a.182f8682364.Coremail.zhongling0719@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <409cbf8b.5b1a.182f8682364.Coremail.zhongling0719@126.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=1mBbkIiT;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Sep 01, 2022 at 05:35:50PM +0800, dd wrote:
> Hi:

Please fix your email client to not send html email, as that is rejected
by the mailing list and will not show up to anyone :(

Can you fix that up and respond again?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxCDQi3TpXbcwCQ5%40kroah.com.
