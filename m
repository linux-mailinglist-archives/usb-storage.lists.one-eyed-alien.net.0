Return-Path: <usb-storage+bncBCTPRFE7TUKRBUF27WXAMGQERVFHQRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x248.google.com (mail-lj1-x248.google.com [IPv6:2a00:1450:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E5886B49D
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 17:20:33 +0100 (CET)
Received: by mail-lj1-x248.google.com with SMTP id 38308e7fff4ca-2d29fb0dbbcsf17022981fa.2
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 08:20:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709137232; cv=pass;
        d=google.com; s=arc-20160816;
        b=bN/D5LZnhIgqR1Ixu2LHxqua4BvtVNSomwakBc5dv92vIrROI5Vs1MZL24rpPy46EW
         YdIey/48Zn8cWUtWSStM/L5hIOSmcGGJXM9Mu6en3eqzYPU0n2jjVprC3m72suy63K6M
         6m5eqRx3/fmbOF0Pkznytypmk3ydEM5k9pSiErH+7kGHjhowiSdMxYLjHIKIAuCXiOWF
         IvaEI7uVLIIVKa2o7UW6fGWs6QNUjgUImviS/eqyvZt1kgec7NTkWMDWaAjELr/3TnPW
         5ZSrrxc8tw0ZfBgBzYaIqXPnWQJac0dvyeXVGJJ60sr4oK0fMkcLqPC61dxT3Mmxg9wf
         sHpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=LGAypXfzncak5cC0mi3I1ZSEDubYNpTc4PcwISnx5A8=;
        fh=AnqjeqiV0oS8tfkAEzn6kDNovWN5zECdYnx3o8Wjdo0=;
        b=P+h4rcoTYOLfpcAQnF985lfJ+H0IDV1TkmcCWzXxgBBhqKhoMvJYXeE4loNUPq3B6p
         A8uZhP2v5xo1BpdyO/aw7ggLMKGu52Hzx9Td2M2yJ1g1OeOoQ4SjCS4zMGCVoJv6/jXt
         pcFRmY5b8VhFOy9oc1xJJrefMTqprjOc9eCBZR0zE/OJ9bnBDQjg0I7H1PzCfvFTDe5w
         2JU/Iep9RrKbz2pQ0wMM4G31saM4ba83MvTzu8i9lapMUReD1cqFL7feCRWLqkXS5RfU
         TzOgw2eUAsrwAXkY9JPjjsb6KIrXe0IM4cuM4wCY3RTiL65jkV42aIPfYEaCNei4ms6L
         jq9Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=S1FbITZg;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709137232; x=1709742032; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LGAypXfzncak5cC0mi3I1ZSEDubYNpTc4PcwISnx5A8=;
        b=iDbCPl/o/lxVq2XpFM2kOti01yJ5vPx8HbggInGiVGDRXDfmMlbcBjhHR1CB2GuY3z
         Rzhm2oxSt/zB9+l4sGtyB/YjvTTGpMN/xxqrwxKXOjhanpq6ZEj9t6sUZT6ngSs8NBiF
         5Pvew9EE41/ZaPForCBX/7/9Ye5jynBb/ZJHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709137232; x=1709742032;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LGAypXfzncak5cC0mi3I1ZSEDubYNpTc4PcwISnx5A8=;
        b=hgDECow4b3+tL/RGbsBV4qhZm8V4J7Q1l4wH/E1IUI9STVYgtnLaILUkmm29i6tn+U
         nTVkGK4//bvI9TUjx4aKUpu3xfZiMG76RLhGWhJMP/XSBt2iL0s/o+0h/cmYjBblmqkI
         ZNuH4xWDkkb9FbTWFLxts4+6tboc9GvEZLy8kahjJhfXemt7moSoCrjHP/rj0ZRAiwpt
         KJLU6Bwe7w4rDSrDe0AYjHOb9vDhwNRhZr7P0hC5CStMSQMaA0eGt+bXo4khBI8ElU0Y
         w/GzctRSlKahtxdrzFS/63Sd/v/7pywYGhoXmeVjKWiMEMXQ7x7dhBmPmkqKJXqVjr8T
         XNEw==
X-Forwarded-Encrypted: i=2; AJvYcCXfu9B94htaMcc91vJQ+PYh5p9RJykqASn3leG1dijLiIRiks2p8FK76Yb1c9xfBiRwLw2dwDtjhYeKc8Q3U9gslmgitrCSpHOI
X-Gm-Message-State: AOJu0YySgftzsb1vzk4fEVsbwbX2h86pwu4k81GTSd3h7kz8EyYr8Y7l
	7JrSe3LhoBvYOOsH4F42KpYyTZejUEG617CfMg1l+3VpvVTOcQNUQBveWwupjRw=
X-Google-Smtp-Source: AGHT+IE8s7a3ZhgWAZrnTAsYEXkiZroClE/U0obedoYOkOcbn2fgDwAugFCFypk0NHDOn8iaT+MbUg==
X-Received: by 2002:a05:651c:b10:b0:2d2:751f:abb2 with SMTP id b16-20020a05651c0b1000b002d2751fabb2mr10255685ljr.3.1709137232439;
        Wed, 28 Feb 2024 08:20:32 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1e11:b0:412:a3e9:e34c with SMTP id
 ay17-20020a05600c1e1100b00412a3e9e34cls238986wmb.0.-pod-prod-09-eu; Wed, 28
 Feb 2024 08:20:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXwdZdDVvkRsmLBpq75q5sjW7LZBli6+7QgTjDnR8qkF1JPj0k034m6ZdiWUXdjBEdhgT020BgkgJyy3jMQCfaNL7ZRwZLc5EoELNWrUvMQjzWnFGg=
X-Received: by 2002:a05:600c:5253:b0:412:8ffd:bd8e with SMTP id fc19-20020a05600c525300b004128ffdbd8emr10028032wmb.18.1709137230619;
        Wed, 28 Feb 2024 08:20:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709137230; cv=none;
        d=google.com; s=arc-20160816;
        b=bfWP0BJ0+Wl0JQBwezYVU+rfySS7q+hRtVEDbS/UMPfEwjaXl0roSgx38LpwCKYDYG
         93mHWkJx5Bgw/Kq+8zri8Oi4q/uk4uHkusTUkVDy+s54kf5Dorxdl5d9R3cHzoXB1WKd
         OFsNNXF0fLn85iS9nb17APOV1g0vubhFI/+nr/4qo9SoYCA4BnM13+v59O9ywlgullhN
         YN/DJqdJcwmY1Mp9qikDq/EDU8Wibb81kPBBs0t1nyX02qkHIf9T4LacYHZLm8Pc5NRA
         t0DytRvft0jl35VUV6kRxBl01qq/0m9wHFnCF+yQJtgxkuLASjCBeyPB4Ax1wbora0RP
         cAIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=/S/VGPvsfGjP7Vnsp0e+l7Ngw50qa9AEjKUyDL1iwOA=;
        fh=HqBoRCeuxdBAgpvsPyA+BlEgPGSi2wzTA3H7GhNtytc=;
        b=Z58h2p4FqLORIyB5Kb29h3rlMXtlo4hZNCdIfX84+KyWLWYczH2utGxSWcsrNGJ4cD
         L4XaumsMud7x7XVpQWhgR9XwMjVhBKZLSiF7w1HRhw/0Fc2ZWFayiO0/7LNAdltCbSbN
         6hw26TQUyNqJwAIDtwwWDAWKQGiO+HyZCo7ExXTBi3BS37sW7xaG0oM3HF0ReK0cLFMa
         hx4KtjByy9/sIPo86XauJm4D3BbhrGfXyxHNTInxmM5GeRxzZJgtDFfLIesGoiRW0o6E
         ncwbUAyABW+iUIKZMh5NGOdbyeLx+vyACjpjl9sIqBXc2TLt9n9Kh+vbArmH9JJMQ1Ul
         MMwA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=S1FbITZg;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id l26-20020a7bc45a000000b004120b6b99b5sor2776574wmi.11.2024.02.28.08.20.30
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Feb 2024 08:20:30 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUVIUP2y4FH0w8NqsA4g8KQiVVvNE1tFiOnXerkGp1aw5MZ2xsmUPzMUD9Liqt+HmmJ+Y2hDiBh7hcSfTvJfDJMjRHh1/rBGUXOtf25vi4pTNNk5Go=
X-Received: by 2002:a05:600c:46d3:b0:410:ed31:9e96 with SMTP id q19-20020a05600c46d300b00410ed319e96mr11058936wmo.11.1709137230312;
        Wed, 28 Feb 2024 08:20:30 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id l36-20020a05600c1d2400b00412aff7874esm2546958wms.48.2024.02.28.08.20.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 08:20:30 -0800 (PST)
Message-ID: <12b30393-0b4b-400e-828b-231901d8933b@suse.com>
Date: Wed, 28 Feb 2024 17:20:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>
Cc: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
 bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com,
 tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
References: <0000000000003eb868061245ba7f@google.com>
 <99b0fb1b-37b3-4da4-8129-e502ed8e479a@suse.com>
 <9bbc5b63-33e3-44de-8bce-4c59dcce5e92@rowland.harvard.edu>
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <9bbc5b63-33e3-44de-8bce-4c59dcce5e92@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=S1FbITZg;       spf=pass
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

On 26.02.24 19:13, Alan Stern wrote:

>> It oopses here:
>>
>> 		} else {
>> 			if (!id[ATA_ID_SECTORS] || !id[ATA_ID_HEADS])
>> 				goto too_early;
> 
> Those two lines are debugging code you added, right?

Yes, sorry about that.

> 
>> 			sectnum = (u8)((lba % id[ATA_ID_SECTORS]) + 1);
>> 			cylinder = (u16)(lba / (id[ATA_ID_SECTORS] *
>> 					id[ATA_ID_HEADS]));
>>
>> in isd200_scsi_to_ata() because it must not be called before isd200_get_inquiry_data()
>> has completed.
> 
> It can't be; isd200_get_inquiry_data is called by isd200_Initialization
> during probe before any SCSI commands are transmitted.

So, you are concluding that the bisection is spurious because
without that patch the SCSI layer would see a capacity of zero
and not even try to read anything?

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/12b30393-0b4b-400e-828b-231901d8933b%40suse.com.
