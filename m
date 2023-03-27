Return-Path: <usb-storage+bncBCUJ7YGL3QFBBSMTQ6QQMGQEKTRZRWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 2774E6CAB13
	for <lists+usb-storage@lfdr.de>; Mon, 27 Mar 2023 18:52:26 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id q21-20020a05600c46d500b003ee570749f7sf5090963wmo.7
        for <lists+usb-storage@lfdr.de>; Mon, 27 Mar 2023 09:52:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679935945; cv=pass;
        d=google.com; s=arc-20160816;
        b=Www3ndlVULFznuGbB06MjFDBXW3oyEjdcCWy2zlE7nQ3IIDV60E04GxOOCy7mOncR5
         VIBHBjGAgtkxvAusjW1NCIM7tZyzy1ArmW65Gz/mHX4MA3JqJRkiyKwRuhKWAiFo/KfA
         +a8ZKiibOCiis2e6+Y6mkCKd0KAqx3Tbhgkgvbowx3tJ5nT/7GrDQaJRSmo9quQ5SfY0
         fR8oIRnrud9lKzEL4TaIeW/zH/HrwSCbn4mHy4MPLd6sZsrY9TnLomelBulrfVrvps5r
         bYMawKYH0V1YXiuSNhOUlhkS6NTrm3UtE8gnhGQS0kh/zS8ctJPY2JY4Wsg7mAt8XLEs
         DyPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tR5KxeqVrFBOS/LtUEn4qVCuNmy4f54bE5xIXumObCs=;
        b=PRd7TRU1Rz9B07Ldyep06GB2Zo0eQUJlTSVy1DImWCxfJNITCC7Aq+vtSY0rl1apX6
         LmDxcJ9D8VUpgXhtcPeJ/NXZM/mOsXRsBFUkt3rtctceLyTiMutTT4i4gvMHKenqOe10
         uZ3uS4M0LtnI5KjUn0RU3kF3Dj2x9bKqNYTo8808WdoK6TqKEU/NYiyWYwZMqmItCDWi
         d6JAx2Kz+s/G/2FP36+/QyWMc3VZzgU36X0tpzECfqDOHi890vBGt7O64xYE7DmxARGT
         1xT5w/nXl1tvqR+O0w4KIt6p9jFSp2R6wdQQb72PUMMB7gt7VTt9F49CdJsALAW37vvV
         QD7Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=IeqmR9de;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1679935945;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tR5KxeqVrFBOS/LtUEn4qVCuNmy4f54bE5xIXumObCs=;
        b=eDjIBm385bkd4G0GEVkwybIneCAIbdQlWdOlecP1k3BdzwP4ZXhwHDlLZmaNqngKyu
         iBfQc92G/JA73fgVbhq2KZhsU/E4klhpl46Cj34UR1ZRNjGp5cT3no5drAaJTDzvPVGH
         M27NOOZVqWKwwFnC+9DSAti0YENc886NrIfec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679935945;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tR5KxeqVrFBOS/LtUEn4qVCuNmy4f54bE5xIXumObCs=;
        b=ZCmz4daNR2Bva/Cd1dt+vFeD/fUuEAFnfSWuZopyOKfARE5qdzRS9bB4yH2d6bAlvW
         wL4MpeJXh8EtZ8ss5KGJuBb2+PmphTB+4OfCB1GC/aMxcLn7XRFVUxTaFyDUKJBBPkrn
         biXrG5fwm0AjDHWf3esjbBkJ8xZxePUMytiGx4AC7hD7pxy+5/rXZyfjXT3D0Am+s1WH
         seSqZHq9x1v1ErQxBIa2XFV1LBkFpWr6NPQhKAd3nSh/qggfXa71Qx2hVDzhgpfp8DQF
         c0UwnXaw5NYcKcrKXVCD63jcnAGjINBM1JIWhVsIaiMdlMLDqFCwbz+gqvRDk9ogpc+0
         7hiw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AAQBX9c2lFO7JkYfseHLDAup6ICbk3C27hrRxnMOkXx0/60SBJDQLsMD
	yDixq02u6uqgKOkMzQj1n6ctqQ==
X-Google-Smtp-Source: AKy350bBM3nqF+gFWaT8zGXeANOww4aqNkzR7ItBH9NPFpemYn2TpT3fnaMVbCO/KCu4UhYVnw2JDg==
X-Received: by 2002:adf:dfcf:0:b0:2c7:1483:9479 with SMTP id q15-20020adfdfcf000000b002c714839479mr2525025wrn.11.1679935945429;
        Mon, 27 Mar 2023 09:52:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:5e81:0:b0:2cf:ef77:1717 with SMTP id ck1-20020a5d5e81000000b002cfef771717ls13603615wrb.0.-pod-prod-gmail;
 Mon, 27 Mar 2023 09:52:24 -0700 (PDT)
X-Received: by 2002:a5d:62c8:0:b0:2db:43ed:1baa with SMTP id o8-20020a5d62c8000000b002db43ed1baamr9017435wrv.24.1679935944120;
        Mon, 27 Mar 2023 09:52:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679935944; cv=none;
        d=google.com; s=arc-20160816;
        b=PmPl8H+3TQs00ayxDcp+7wKg+pleB6FHsriXPJ2FO/ub8IR8BMXVjhhu1aYWT3eAff
         tUvXcziFz328NR3hbiTvifERfFvZr6n99Y2/D6Y35S32SJOGadj9vK/YiV/rYkISSGQH
         m1kLU8fhLgRDZAPkYk1pC5NCkyO5l+JTnC6ARa0X/uvvP8vANcEJTCId9QzmWtEhZG5l
         z+77pZRfctIabwQeBL4uZGJyjZWeA0cKHWJap7FJS6pr1GsgJ4xrY23JHxK3ljhccgVm
         ys8n5HHmEN8Obc8M0fPYFbjE/dinAWh398YnhW9r5RRZnLljPCjZuxDhTupwmbcdyZFx
         8GEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KtI82tmvK5x/jEOmK6tYvssJlLNDRk66Zf9aurMBLDs=;
        b=kxNgjdghuunEuAShJY/YC6KeIcaq1YvoCWOztYhrFJcjLBrZHPD6F3ZyM5AQuKwCyQ
         ++d83+RTYIxydDgnROf3/uJUiz2FyOfYXWbwEDwoUSqbK0qTGEmYjnwNtAqMebwnhZhe
         0UzKO9hcFsxtdHVae8bS8L9NZ9sVi48KMfgak1hlXj/qJ/eA7TUuHj0IM9z36oqYa215
         t7wgy0JS7pfVqU47msyAbaqx73X/wGvjSaEERT+IRuNWaTnk1Qgr3qPmQ1bQDeGcQeJh
         XBI7tckFB/V6rEy6wm4kG239BeCTUZc1wXOAvE/RLlCf403QW+G02X1+4UwEUwwi57ur
         J8XQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=IeqmR9de;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id y9-20020adfe6c9000000b002c55843cc67si22811206wrm.164.2023.03.27.09.52.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2023 09:52:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BF10FB817B0;
	Mon, 27 Mar 2023 16:52:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3039CC433D2;
	Mon, 27 Mar 2023 16:52:22 +0000 (UTC)
Date: Mon, 27 Mar 2023 18:52:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Yaroslav Furman <yaro330@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v3] uas: Add US_FL_NO_REPORT_OPCODES for
 JMicron JMS583Gen 2
Message-ID: <ZCHJw9eNPrYduLz4@kroah.com>
References: <ZA12pMgwA/8CguYd@kroah.com>
 <20230327135423.607033-1-Yaroslav.Furman@verifone.com>
 <20230327135423.607033-2-Yaroslav.Furman@verifone.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230327135423.607033-2-Yaroslav.Furman@verifone.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=IeqmR9de;       spf=pass
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

On Mon, Mar 27, 2023 at 04:54:23PM +0300, Yaroslav Furman wrote:
> From: Yaroslav Furman <yaro330@gmail.com>
> 
> Just like other JMicron JMS5xx enclosures, it chokes on report-opcodes,
> let's avoid them.
> 
> Signed-off-by: Yaroslav Furman <yaro330@gmail.com>
> 
> ---
> 
> V3: Moved the code in the appropriate place, after the 0x0578 device,
> as pointed out by Alan Stern
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)

I'm confused, this is already in 6.3-rc4, right?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZCHJw9eNPrYduLz4%40kroah.com.
