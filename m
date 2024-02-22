Return-Path: <usb-storage+bncBAABBRE33WXAMGQE5O2GN6A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D9985F9EC
	for <lists+usb-storage@lfdr.de>; Thu, 22 Feb 2024 14:36:06 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-59fc1ae4e3fsf5333453eaf.1
        for <lists+usb-storage@lfdr.de>; Thu, 22 Feb 2024 05:36:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708608965; cv=pass;
        d=google.com; s=arc-20160816;
        b=dLgJ6wB2pptmmYRWb2fiSjSzCVblgdFF8Xr40c3yDXuw/Z0g9YV0Ic6U/arXN8/45H
         LB61yOwb/aDnEEE4cpWOWF6eX2391LgmsZ6p+ZfsNLlqRWN7vVH137zl8C14iurMNO7+
         S0T4Bj/U4z0P9k0eeyOnoHzhODUWRz3AanTm0rCSkV1bgBE2wq9kJYCkflAvsZRx+ace
         xLX8l/g4wG1Rcxec9tMzS9o3mZ7YA+4CA8vVMu+Czu+CF50z4rvzb8vjoVRywaWtOpb9
         llZNcuef0RyvK6JN9CseC0qsREZG2Fg0SLOgQJEMlwaAWrsZkhjIloCTwK3t+AAPzkCE
         Z0Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=L8uFt0bUr42SHIfCWYeM3McC239FKaIZWUxf3EUylYE=;
        fh=HJwjZ9JaYhI6QEGq8oiNONrAJBt8Nd0YLk67xASnLd0=;
        b=vqYCtWssB5ZkH174ExeT9XOecGWSHMouVbFQN5Dx1ik2tfbCxsWZrM6PmBrdbM1Lnc
         z9MlZ2c1x4FgkNrzeI0TE3pkdWup0usx2b6zx7aanwNnOPWnjkjDteUEB3IDYW7giKwT
         4JrN/7Xi7PScU2+x2yodzdBsgWMlOQHAwyU/vOFDJeZen6FoMHW2aeKXErGcQJ0DquJH
         J4Q2SE0z/rRuPzruQDWoaN/TfEgdwQvj69Z3fMv5VWOLDihl+29nifX9ZuqPycPSTPMQ
         ZQ+U/r2xbCf8mLBTnhRqblCEXVhv4QYfqgXnTVXIcOJMNy5xPV56OoyU/VWpWryST0cD
         kTZg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708608965; x=1709213765; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=L8uFt0bUr42SHIfCWYeM3McC239FKaIZWUxf3EUylYE=;
        b=Pt5arf3JtG/Hb9h0MuB66YSIS9ewDCpUG64Z/0ZLnAacqVZO/TZCDqzLuORSMoIDDW
         T9zYDDUi75oIQTeb75mRvkjlaRR0MaZcRL2C5OZspuLIiLY9aQx2SjN8OoUVF1gX5rrI
         gjNOGEvAzNy/n7GBn6QMQ3rtgMo2Zbif/lvnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708608965; x=1709213765;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L8uFt0bUr42SHIfCWYeM3McC239FKaIZWUxf3EUylYE=;
        b=CWPEQbElrhSBx1R8zJyFUR1EFjZoFFDAmkRoiJ9U+6N982+8V8nD/ws35h9evaeOT2
         Sg6fHrWg9H3IXEGkb+VZJOSQsSlKtvCMKzlllqu3MJ2i2SwfoOkxqArXIIz/JsDY8an9
         eyHMWCGhxy72QF1DhzeV2SmcfpQTBAC1EWuvP1P6TTk0daNqUVmb+xb2r7CkCYGVGKGs
         rtJlZOGZZb3c5h3ufe60PWi25ydT6sgy5Cq33D/93TQNf+f7orahDezr7Y0TxOBesBDu
         Pgy++1X7HN1kj2KnUxeybeQXMXHz27jDfoVpdtMD/i1WoPLAHUuf26qI7zLd3EkE61mK
         22Mw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUtU6mAYRhLNzE2G9EvzmYsWk7eWXqDYi5mv6VklpYxoFqj7CYk9RfD2dY6FaAO40/ulbuY/MkFxG85Jv/XnFsbNk5heGlAREED
X-Gm-Message-State: AOJu0YwhYkDuB69/EWJL3wsIj3/mDVVF3+g422LVY2C98zbNnzAXWvwR
	G/BrzRdCBfmwU8KLqFu9Y1JkyDgGOJG9sy/lPpyaCH8YhnKYWeIiRS/88il85nQ=
X-Google-Smtp-Source: AGHT+IE8+tOOdo17Nw6HJh8jmWnqSDFzSbjSBC9oPuG17JhTscPfV+44t4Hlo6MZUS2I/CBiu+8PzQ==
X-Received: by 2002:a05:6820:1f90:b0:5a0:3826:3b0d with SMTP id eq16-20020a0568201f9000b005a038263b0dmr528602oob.9.1708608964689;
        Thu, 22 Feb 2024 05:36:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:98cc:0:b0:59a:8fa3:c3c5 with SMTP id b12-20020a4a98cc000000b0059a8fa3c3c5ls2386058ooj.1.-pod-prod-00-us;
 Thu, 22 Feb 2024 05:36:04 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWUybKf1HfIWiuGrphjZO1WmMhS+7QRd5Zx7CQKg6eNaqhe5JtEEAVmDW1dliTSX4e/HmRzFuuPGtwwe1iU+CEVkI5x+R7NjGY/3fkfxd1r32MHikw=
X-Received: by 2002:a4a:e608:0:b0:5a0:308a:4a17 with SMTP id f8-20020a4ae608000000b005a0308a4a17mr37923oot.1.1708608963921;
        Thu, 22 Feb 2024 05:36:03 -0800 (PST)
Received: by 2002:a05:6808:2202:b0:3c1:31f7:7819 with SMTP id 5614622812f47-3c177cdeeffmsb6e;
        Thu, 22 Feb 2024 04:06:54 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV4dHg3q8rwBUUzQirYlv4VPNrI8/bXW0uPWVjIKoQFAOYqfZpxFasvim0fZ/PNDetZYNcMEZGw3rCIts7FcdKAUc7ZjwJJGum4sehaKxWelLnUE2I=
X-Received: by 2002:a17:90a:dd82:b0:299:5186:1989 with SMTP id l2-20020a17090add8200b0029951861989mr12833743pjv.37.1708603613192;
        Thu, 22 Feb 2024 04:06:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708603613; cv=none;
        d=google.com; s=arc-20160816;
        b=AzOuUsRrcAIaENbgcTouqtcTJ0/z5NDfc5CjEV+yCZ+5qWwOJwx+VG4QNDb2cfYyKe
         2XHy2JYlLrx8VQEEWePZ9FJVl/yXPeUhrF5+ciKBwcQ8YGuv5q+0UB4Lv5HsksB0RrYX
         Qwcmr3f9YNFF3X36lS5IyjjOSEcdJAZO/p5OWE8J7V7+/eex7ri0VJ0ZXx+rVAm83UBe
         7Hdy0UQhpyRt94IfkaVebxMy/0dpIWUQiH9Twowp3/LlK+aAwlU2IyvgyE3W4gJgW5A5
         XIedRCQA7wAXRuV/1ttKBD0vg7+hncpFMbGpmENTH//cMid9GHQehTddhk1LKVUzDAp4
         glRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=ZEVASzkNIK6a2TdktYfqzjL8k8KbbChc5/ghdVGBdaY=;
        fh=1iwdyJtWrfp91ALCxlM2896XZoMs3zxKzwK7hFAsXhg=;
        b=QtQiRjE4C904Yvlc3G5R/865gQBt0QzEL5sHLW7sJiFbHid2oILJ33HP2euOYUp0nz
         iOsOPCZNEcaHPFKVlZBlBT3uhBZXK/opJb+CaL09VCa5F6VZKwCEeztl2wvl5Vhte3D3
         04cx6K/wYJN3Fwa2vyEmuIVOt/aZprWryEB8uKCXMswsqlJc8LgTwpkIh04+8wBc8KW/
         oqJcRlxWz18boThz5+ZXQRW9b0yFfONcy4ees3DR+Iy4mNGAMo1ryE1LQsBLLbAsB8dt
         HvVljEMWbFzfFMPeR82tAXPwYhH1R7t/qLtiA2sBTmkv1RP5dfqEBW3fakKMzGTjafkH
         FcQw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx2.zhaoxin.com (mx2.zhaoxin.com. [203.110.167.99])
        by mx.google.com with ESMTPS id a6-20020a17090a740600b002993c279760si3044665pjg.71.2024.02.22.04.06.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 04:06:52 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) client-ip=203.110.167.99;
X-ASG-Debug-ID: 1708603609-1eb14e0c7e461f0001-FTGftY
Received: from ZXSHMBX3.zhaoxin.com (ZXSHMBX3.zhaoxin.com [10.28.252.165]) by mx2.zhaoxin.com with ESMTP id Xw3wrZUAYdcf8tPN (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Thu, 22 Feb 2024 20:06:49 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.165
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX3.zhaoxin.com
 (10.28.252.165) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 22 Feb
 2024 20:06:49 +0800
Received: from [10.29.8.21] (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 22 Feb
 2024 20:06:45 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.165
Message-ID: <41daf1a9-590a-e220-84a3-648eb895272b@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.8.21
Date: Fri, 23 Feb 2024 04:06:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: [usb-storage] Re: [PATCH] USB:UAS:return ENODEV when submit urbs fail
 with device not attached.
Content-Language: en-US
X-ASG-Orig-Subj: Re: [PATCH] USB:UAS:return ENODEV when submit urbs fail with device
 not attached.
To: Oliver Neukum <oneukum@suse.com>, <stern@rowland.harvard.edu>,
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <WeitaoWang@zhaoxin.com>
References: <20240222165441.6148-1-WeitaoWang-oc@zhaoxin.com>
 <3ff16f34-07a9-4b7e-b51d-b7220f08d88d@suse.com>
From: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>
In-Reply-To: <3ff16f34-07a9-4b7e-b51d-b7220f08d88d@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: ZXSHCAS1.zhaoxin.com (10.28.252.161) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX3.zhaoxin.com[10.28.252.165]
X-Barracuda-Start-Time: 1708603609
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.36:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 1923
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121174
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.01 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
	3.10 DATE_IN_FUTURE_06_12_2 DATE_IN_FUTURE_06_12_2
X-Original-Sender: weitaowang-oc@zhaoxin.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted
 sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
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

On 2024/2/22 17:47, Oliver Neukum wrote:
> 

> On 22.02.24 17:54, Weitao Wang wrote:
>> In the scenario of entering hibernation with udisk in the system, if the
>> udisk was gone or resume fail in the thaw phase of hibernation. Its state
>> will be set to NOTATTACHED. However, usb_hub_wq was already freezed and
>> can't not handle disconnect event. Then, sync cache SCSI command will be
>> sent to this udisk on the poweroff phase of hibernation, that will cause
> 
> Wait, this seems like a contradiction. Are we in thaw or are we powering off?

This fail appear in poweroff phase of hibernation.

>> uas_submit_urbs to be called to submit URB to sense/data/cmd pipe. Then,
>> usb_submit_urb return value -ENODEV when device was set to NOTATTACHED
>> state. However, uas_submit_urbs always return "SCSI_MLQUEUE_DEVICE_BUSY"
>> regardless of the reason for submission failure.That will lead the SCSI
>> layer go into an ugly loop and system fail to go into hibernation.
> 
> The thing is that the SCSI documentation explicitly tells us to return
> either SCSI_MLQUEUE_DEVICE_BUSY or SCSI_MLQUEUE_HOST_BUSY. Now, it makes
> sense to tell the SCSI laer that a device or host is gone for good,
> if we know that. But we cannot just introduce new error returns on our own.
> 
> This needs to be addressed. That means that the SCSI layer or at the
> very least the documentation needs to be fixed. Frankly, this is not strictly
> speaking a UAS issue. Any thing hotunpluggable should have this issue.
> 

Maybe, my description was not accurate enough, here not add new return
value to scsi layer,it just add a case to tell device is gone in the uas
driver internal and the ENODEV error code not return to scsi layer.
Here just notify SCSI layer of device loss through flag DID_NO_CONNECT.
This is also hope to fix this issue in the uas driver internal.

Thanks and best regards,
weitao

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/41daf1a9-590a-e220-84a3-648eb895272b%40zhaoxin.com.
