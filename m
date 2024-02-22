Return-Path: <usb-storage+bncBCTPRFE7TUKRBH5Q3SXAMGQEGPC6MXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 314CB85F4EA
	for <lists+usb-storage@lfdr.de>; Thu, 22 Feb 2024 10:47:12 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-564408e925dsf1086845a12.3
        for <lists+usb-storage@lfdr.de>; Thu, 22 Feb 2024 01:47:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708595232; cv=pass;
        d=google.com; s=arc-20160816;
        b=zWtGKcSZbTTv2vcSZTkx3kBrtdjM4j1UbUyHxIut3gEeT91EYowEjA2cX2LCr2WS1D
         bTyT2zs+9ZePnd7NdCiS46WvkE/MILsjvIOe+bnRfwNrL9gIro0Fao/NSsxsBLZCF8kl
         qii1ubV8GR3WDSwyVfPs98CtUlxATRTnQGeBc8zyw+gEAGHGjY5tDOOR9895QGo7YFFX
         aoleuBKgGT7XfvNSLf4EZ/rriFQH5v+oMBZaJNUz+C7QNtyJLi3PNbGBNPCHaB8Y0qHn
         iqQ6tmM4vW9DBMfiDlmXUSZ53p0DQWsyyKzK3UwBVAQPxzTcTTqWHJu3aJPeBP8SWKFn
         aLTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=VvzR6NO8Zh4Xo+lk8UqNQtFY/NDKsSk4ODxittStCCw=;
        fh=4Mr832FeLFxTHhMBiemFkeEV8Iu/ub+bJXQxDIZWNm0=;
        b=IVa26oXzoGn0vXs26vow5e5u8ePk1TGPKhhAe18mrewDg5G8sV/D6PePsGC2t9mIdO
         GbeOjn5YkTZT+FI987wE668cX/0aYvoaNbLuNZQ3O0bqS/8cf+sUW5h4QsnQWhTW4u6a
         e7/bERh8RoUlZd8Ke+R9ekxCSnL9ZAyJ607y5ue8HPBa6zdMI4a4w+1wLsaMTeGhhDU2
         T706qSnoHyucIk6llLxaaDHrQgeAjcX215C3a/Bp/lpunsCRXFQ6iwmgQkJMSkKas9Bo
         ErG8HRsHSx1ZdLTx/x+QHKOgIusu+KjseFdSQv49BXvLqkojKKR2u4NIt8XmG6MA+b/I
         owyw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=UcaKweSx;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708595232; x=1709200032; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VvzR6NO8Zh4Xo+lk8UqNQtFY/NDKsSk4ODxittStCCw=;
        b=d8XRevp+P/hHcz4xKZ/7eBFz+QCU6YlgznzQKXlOoFJgz3sJ1jWnHqKNy2PF03ODyc
         5352yzRUJBLlNIleAQ1sDrkOeoTdqvPgcA78g7PrFLxhF2e7pAl3UiVYWXwE94KlZ3wl
         Jf/rjG3YlUQVl6HlXqEix3CR88jtsRETAlpv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708595232; x=1709200032;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VvzR6NO8Zh4Xo+lk8UqNQtFY/NDKsSk4ODxittStCCw=;
        b=Q8nR8W+9nH+YEPaqM/xYab1TPeFJ5LL2LRWo63HO74CWgmXAQBvcaVxZXoV8gTjJur
         95asdSTnS7QxI9RlLPdbPu8JZHpLJwUFZ8jxPvd8NzCnpbNk4OUiOt7FrztgCg5OT8FL
         udXDslw3wi9iQBCyf2AabSs0pe8wSRrXEDVIJWoY9kGUrxi/zUK+asvjGCFNgN/0iEUF
         x1G9vKcCcsk8aHMdpDaX7sHwgc/MAhdK+pn2zWHPmTwLCn9B2z1Fo2DuKSFRC1zDeAgM
         MOADqI2quy1qMS3DJIq6fkA5w+xAdKQaniQ5gKLNTMMO81Do3+a+qNAJF6o3YTCurnaY
         W8pg==
X-Forwarded-Encrypted: i=2; AJvYcCWHlbLM7T5MqlO9gOnndg7jJC6KPvTBQPFASnLsRltYefuNvevCDdNGpQtd6qmGX2C2O5UgS6HObz9H17KYhITE2SdbBvTRfdFL
X-Gm-Message-State: AOJu0YzZIw4HZ9L2lW3K3a4Gp0Gt3VaZyb+MS/mzAelQPYWr/HUyDZeB
	3ZiQNqLvWwHsZMp/o9xDQJ97UhVTe3twEOP704QYKFW++5Xdu8G5RgXYlwrWyWo=
X-Google-Smtp-Source: AGHT+IEWrBtGmgKY1YiydxBWHP2yMSNGYUAv9Orsf9/TnpHTOh0vHI0kShNr8/neXeDX3VEdb2bKNg==
X-Received: by 2002:aa7:d156:0:b0:564:7087:e40 with SMTP id r22-20020aa7d156000000b0056470870e40mr6659913edo.18.1708595231539;
        Thu, 22 Feb 2024 01:47:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:322a:b0:562:c01:5808 with SMTP id
 g42-20020a056402322a00b005620c015808ls303383eda.2.-pod-prod-06-eu; Thu, 22
 Feb 2024 01:47:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW2MbFg4hTvwcYw3azQVA6PjA0QNpc9aVoHJjmkwRB2fl5GJZlOgR1vOGbyeg3MM8cQF0D37Ep66qNETnnHV7IQjDw3lvBbjXvQ46EGPOQiFts7H1A=
X-Received: by 2002:aa7:d6c8:0:b0:564:f3e5:3cac with SMTP id x8-20020aa7d6c8000000b00564f3e53cacmr3011692edr.35.1708595229597;
        Thu, 22 Feb 2024 01:47:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708595229; cv=none;
        d=google.com; s=arc-20160816;
        b=JaMb5f/ld/ui5heZgDoV2k5SoExWlu7RQz0PqL5D/fLnNCDvYTtALokU3UpGqUGnzu
         f+OBN4YEWLD+yNws1K9toZ6ZagAriviyUtBXGpTGqCcqM63mMwr8Yj43DaCHx42nc2Ca
         bsVz6KYh5KEcZtfo5Tnz5p7/5905n/7IVcYFL/QLiqzcdeDac6zY5nv4MIqYV823/W8Z
         sF//a+zS8rIuUch5E1ckewwUPhS1qBbt5HU4IdmBkV+QZwRT7bna9jdX7NnzIdX37GGe
         LlpIoiKNmCFr2qfH3fg4F+Y4Hqyf7zdaYQluVYg2TWyy+lKh5uzQVSwL3CtgFg1X1Jfj
         9jAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=dhVnYESztk5T2B/6C2k8gNoOah30/4ZRZ/kF6+4P7Uw=;
        fh=QfO5QnXdfuA2xnJIuDA/k5Nu5iJ3I0GtYpqMIxbQMaU=;
        b=Pj/NMBADZuAorGvW/RUsPsF2f7Y0BmO89/Z0981X9fTO6BQJskQaxnK4R4FCUbfLN/
         DgbtelHEoR/GujYQPg9W5T7QQZA+OKoSCg6TJl4jGXC5Mr6Zmn5P9DYRya1rVahVRgw2
         BnZp9YiSuKr9MCYUqgBtUfJJ4NRWw+9M2CgIjcAFAV3HR2SsJJqXoHVrlUOSQwRZAnIe
         KXH008/vxnPz2+JKcGnzzjojAb4hVC3V1ra8ZlagmeOpmwfiwN2pfmZj4oTAdct4rNyU
         /C46GgtCY7LwOdrEMja7JoGlQD7EYf28M/tE1w8vINB8XcR8wcOemDQbdrSgQDK0oyyF
         Bmzw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=UcaKweSx;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id c66-20020a509fc8000000b005654aa435e4sor68830edf.1.2024.02.22.01.47.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 22 Feb 2024 01:47:09 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUlfKU4dNwEFgRa9V44U0yYu6dp2ktHVpdr5S7p6KV+gDl5OxGtSx65FwmZyaEUBHYQgTicPNls0iAwRKOzIRMAVPBy67z3En5LPZdnJmD762qA6ow=
X-Received: by 2002:a05:6402:693:b0:564:56e0:5643 with SMTP id f19-20020a056402069300b0056456e05643mr7560672edy.27.1708595229208;
        Thu, 22 Feb 2024 01:47:09 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id q29-20020a50cc9d000000b00563a3ff30basm5724081edi.59.2024.02.22.01.47.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Feb 2024 01:47:08 -0800 (PST)
Message-ID: <3ff16f34-07a9-4b7e-b51d-b7220f08d88d@suse.com>
Date: Thu, 22 Feb 2024 10:47:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] USB:UAS:return ENODEV when submit urbs fail
 with device not attached.
To: Weitao Wang <WeitaoWang-oc@zhaoxin.com>, oneukum@suse.com,
 stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Cc: WeitaoWang@zhaoxin.com
References: <20240222165441.6148-1-WeitaoWang-oc@zhaoxin.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240222165441.6148-1-WeitaoWang-oc@zhaoxin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=UcaKweSx;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

On 22.02.24 17:54, Weitao Wang wrote:
> In the scenario of entering hibernation with udisk in the system, if the
> udisk was gone or resume fail in the thaw phase of hibernation. Its state
> will be set to NOTATTACHED. However, usb_hub_wq was already freezed and
> can't not handle disconnect event. Then, sync cache SCSI command will be
> sent to this udisk on the poweroff phase of hibernation, that will cause

Wait, this seems like a contradiction. Are we in thaw or are we powering off?

> uas_submit_urbs to be called to submit URB to sense/data/cmd pipe. Then,
> usb_submit_urb return value -ENODEV when device was set to NOTATTACHED
> state. However, uas_submit_urbs always return "SCSI_MLQUEUE_DEVICE_BUSY"
> regardless of the reason for submission failure.That will lead the SCSI
> layer go into an ugly loop and system fail to go into hibernation.

The thing is that the SCSI documentation explicitly tells us to return
either SCSI_MLQUEUE_DEVICE_BUSY or SCSI_MLQUEUE_HOST_BUSY. Now, it makes
sense to tell the SCSI laer that a device or host is gone for good,
if we know that. But we cannot just introduce new error returns on our own.

This needs to be addressed. That means that the SCSI layer or at the
very least the documentation needs to be fixed. Frankly, this is not strictly
speaking a UAS issue. Any thing hotunpluggable should have this issue.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3ff16f34-07a9-4b7e-b51d-b7220f08d88d%40suse.com.
