Return-Path: <usb-storage+bncBDNM5HFD6YCBBFWRYSBAMGQE3T4CLWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 579CE33E0D3
	for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 22:52:24 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id o16sf9675920pjy.9
        for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 14:52:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615931542; cv=pass;
        d=google.com; s=arc-20160816;
        b=CeywsdADOmisQPHaDJic07SI7U5n6dBccmuDWj/N6LJ67534MTfnjm5NlZM79eUA2h
         EWPrLS+wmYt0IjXburlML2a/o1QbPTpeqpPKCLYq13IpQX4vIp19gs++hAyQTiGB85Z7
         EZr09Fts+1FwsdstRL57mw1Ik/5dbdSYOxin3ObBV+E7DX1rnXD7MyL+ykrHn4aJwOTx
         zcX3XKZ9QgdQ1E1r7LMMUkrAbk+4rOrXA5YJDaVlkgyT+3Pe8bhXGBVcbUv6aE3kikoy
         KGnkkQDFdEpTjCdjS/nItmC1dk1oDHCgYef0XTEvoVmPpqXL62Z4KQi94WJPs64xhPpI
         pmmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:references:cc:to
         :from:sender:dkim-signature;
        bh=cbuZcYFs6vwSD/ZDwrBoiQH4jtU3820EhjldCXm0aZw=;
        b=WohZg3ZxemhZpf+HaE2VUA49MFxpPYxEN5TitNdV5t4OlnCt6MZ4qpKoznX/zaihIR
         szsDB3pvg7ZQ5iEG/mTOVpzXo9Mm1p/HXbYbrEkolZ/yCOAPb9EP9pxnrzgfY1OO65jY
         XALKNsuJCG8ssPHvROyPBErxLwNIbM7tQETbUPu29Y9N41brhWY6bHnaBSnegWLLu3PM
         dr3zoIxRt5oWq1OcbJ7JVi2KhL3Ut9eSqSfKnL25FSaIDi92bZ/xxgx/Avkmhp00OEl2
         /BHYxI8LVcy/aXxGxg/E+D8WatlHajRshAXtothFaGhlWrpivqwXodcQTag++o4KQqAb
         f/pQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:references:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cbuZcYFs6vwSD/ZDwrBoiQH4jtU3820EhjldCXm0aZw=;
        b=ce/A6zkM9Jx/PKVZJVzPRHcB+Aiz5qI3IriLh45ue9t4J89X8wWjDprF9Kl5Ot3Ydn
         XwP8ZuJ9faYca9x/xEOu/55s5T8lCvK4GDg4o1+TeomFZIcpEcmfnoWfSntoREJNLJHp
         wWHnpW4HQaHYj0/fDXswv4+28QikgHQ5fN+V4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:references:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cbuZcYFs6vwSD/ZDwrBoiQH4jtU3820EhjldCXm0aZw=;
        b=RskWx6F+BAUD14smRo/jhbwufZ+87PkpY9guJ43GsbDqqygRoGdoakjAs/CIp9Kfwr
         P+HXtlWKUF3VidU/SVrYwmGfIcHhj337TJH9siux6OwAYYf7OOE2lBccM71AkpCHlyxs
         Fxi3kyN9DFWxF7OkJTer8iIi3KQS7/B/S8PlXIMfRCXdoBZfeCd4HAbEWkZ5VcH/cO/b
         Blb16OUhpR41vDivK3NO7qeU0p6+3huGnQmBiBJiIn67M6BgzaOAIJxV3x+uIfYWpuKg
         2qYAkoChIjSyeR/ZUIvl+Y7Yph2Pq03T4zhAx2JtSCNcswLm0KL2GTQaoziU7bN1N8IW
         7HWQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530uWks0GACXf9DJXhPT/neUSlXzSE45gWIiUiDxu5iVP8KM+EvS
	L5q0aIt+98K8tev8QKpVrOp/4A==
X-Google-Smtp-Source: ABdhPJwk31LmjaliXxM6ZIbIMIgdIA4y3vEo/A21rvRzmTxfbcpMOTeLnpEoNxNX7+gXhMzx85fHtA==
X-Received: by 2002:a62:e805:0:b029:1f8:16ba:4518 with SMTP id c5-20020a62e8050000b02901f816ba4518mr1273968pfi.37.1615931542718;
        Tue, 16 Mar 2021 14:52:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:a507:: with SMTP id s7ls11083946plq.3.gmail; Tue, 16
 Mar 2021 14:52:22 -0700 (PDT)
X-Received: by 2002:a17:903:31c6:b029:e5:d0a4:97cc with SMTP id v6-20020a17090331c6b02900e5d0a497ccmr1249181ple.52.1615931542066;
        Tue, 16 Mar 2021 14:52:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615931542; cv=none;
        d=google.com; s=arc-20160816;
        b=n36Kdn8ln2l18jGXtJT3l4HHYhDkwYQXPlErA3xc/sMVv5H/Pm0OersZ93gjRFTJta
         95eaw/7+HjAiLOGXilaYxNrzjmfbQOIMFJ0OkWhWUXyu1jmu9NYDaDbS8zkcUCnhMdCe
         lj9W0Kux6yHn61lvAULvSrFA3RjP4Bf+QW2h8YuNS4iQaWuyh/F1nshMs0ih6CkRtbw8
         YUwZ59lqPdfOqGYOq/2/t32sGYsx8pjqZMhCP9jFwjIeBRb0uflWPM8ol0akGOKbPzMs
         Lqp4XBBUahBM+o2E+nqzz+0OloCQ+h4GIKU7vWHuF83G9mUMHrC9KiDIboAniUSFkwpo
         8ndQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:references:cc:to:from;
        bh=1iYti9IbGmrAfqSMrFShgHVyfVaywq0/uUdORmd10n0=;
        b=KBb15jNnehfBLXj5flOX6HDGxLuj44TpvoUp87PKW1mJzLGbXDGdPPI/coc9Aq8eKr
         48Q9IGCLMT5EgFSbAKnW8xZSpuXTgGN8efvQFpFY2RIg/K73NGu2RLCa0kIzYHidX79w
         P1ywIE590Hatvhfay7AIwyrKVDqKx3P5pDwxlcRi1H87tROUMpjIK4flEoOL5SASyzNw
         /rD5hqgSDEf1JtU29WcLkRfKJBkTmeH8uNanJrfYP73vTAV5lBjwQHiznb/Y0qBq8pa/
         rJaFLu6Buc2l64iVrwZA6M/k/AnMBjs3XPEHNveqHutjTTvRL/5JXE8JmH7p160oGPFr
         p/lA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (smtp.gentoo.org. [2001:470:ea4a:1:5054:ff:fec7:86e4])
        by mx.google.com with ESMTPS id t8si6500779pfg.121.2021.03.16.14.52.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 14:52:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) client-ip=2001:470:ea4a:1:5054:ff:fec7:86e4;
From: Matthias Schwarzott <zzam@gentoo.org>
To: Alan Stern <stern@rowland.harvard.edu>,
 Hans de Goede <hdegoede@redhat.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
 systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
References: <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
Subject: Re: [systemd-devel] [usb-storage] Re: Amazon Kindle disconnect after
 Synchronize Cache
Message-ID: <70f60146-bbe9-af81-7b4f-29bcc22e0255@gentoo.org>
Date: Tue, 16 Mar 2021 22:52:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210316170433.GD448722@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: zzam@gentoo.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as
 permitted sender) smtp.mailfrom=zzam@gentoo.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=gentoo.org
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

Am 16.03.21 um 18:04 schrieb Alan Stern:
> On Tue, Mar 16, 2021 at 05:43:34PM +0100, Hans de Goede wrote:
>>
>> Thank you for this patch, yes if this works it would IMHO be
>> a much better solution then the udev rule.
> 
Thank you for the patch.

> I think it would be mildly better, but not a whole lot.  Since the
> Kindle describes itself as having removable media, the kernel normally
> probes it periodically to make sure the media remains present.  The
> default probing interval is 2 seconds.  Reducing it to 0.9 seconds
> doesn't represent an exorbitant additional load IMO -- especially since
> Kindles don't tend to spend huge amounts of time connected to computers.
> 
> If it's merely a question of where to change the polling interval from
> the default (automatically in the kernel or by userspace), that also
> doesn't seem like a terribly important choice.  Certainly a udev rule or
> hwdb entry is a lot easier to maintain than special-case code in the
> kernel.
> 
>> One question though, if this works to fix the undesired ejects,
>> will an actual eject (using e.g. the eject utility as say
>> "sudo eject /dev/sda") still be seen as an eject by the kindle
>> after this ?
> 
> It should be.  Maybe Matthias will try it and let us know.
> 
Just for reference a direct answer here:
Yes, eject keeps working as it should.

>> Because that is actually kind of important for everyone using their
>> Kindle with Calibre, breaking that would not be good.

I also tried to upload a book using calibre (without disabling any 
workarounds in calibre).
The full process did work fine.

Regards
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/70f60146-bbe9-af81-7b4f-29bcc22e0255%40gentoo.org.
