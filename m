Return-Path: <usb-storage+bncBD3JNNMDTMEBB4VN6GHQMGQE3UWGQHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D0A4A90AB
	for <lists+usb-storage@lfdr.de>; Thu,  3 Feb 2022 23:28:04 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id k92-20020a17090a3ee500b001b7f89d8ab5sf4732439pjc.0
        for <lists+usb-storage@lfdr.de>; Thu, 03 Feb 2022 14:28:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643927282; cv=pass;
        d=google.com; s=arc-20160816;
        b=IwjwN7gGds4RCt8yAZB1wqBtGl9tli4IokW95I7UZCvr3hNA9wIAh0AusZzTuvWLq3
         7eQAfhjNX99fkr2J9cPKxsxpizhwOaWCIHtaxqawugw1OD+m1teQK+EMMrbUws4Zuyts
         1xb6Him9Xwf0p07Bq7i9XO1P4XRFuSPtYFaCZr+x0bIGmV8Eqie7zRabdq2sPHjQcRgd
         uVV3EXtuAn9vOZDAVi62jb7aUBp9C0JFxbEWwjh/RCkTX0qonJqLJSUYT+Tz4Y2eyc+E
         NF+zJkoHUPBAPtGg/RrUDQGBPNacLQPP6dS3HghLS/mLsVrhEjKqYIgjNPYoaZPpBKhn
         /r6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=/Pm6Jl9VJEguc+cm5ebKNRMNPjprrH0Ck7nv5q1zpmk=;
        b=DQtFobWsiupe5aukT6udZ6y67yRVvYXCQWR+FxbcZRj6GSv2xvWxu78Ix4QrXKXjqV
         z4anUMoVh/0+hw3NT3UBtqmGTmh39Btp5gwDPJECjuBWVQdkOFc0Ut1lv51PswhACnh4
         /7NuKE5/YyLH+EBxIwNKctDpgMZcDUiZPit6lI6SPO8d+th1WZZCAzwdZkqeQJDyYZCF
         j193O+cz/40WFHAm2Odtjp+sd32R0OYRZE8zNaeBotSYBZneSBf7cLNVi4XaZIRE9BKV
         r1pE4E9cXdD6Mym9SzjlgFs3pyCfTLqE+WE8d9VbMh0eZv5WnaZdDFxftWfJ4jz2j+G8
         EOfg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Pm6Jl9VJEguc+cm5ebKNRMNPjprrH0Ck7nv5q1zpmk=;
        b=HHwqOr36Bl2j9MgnTCKnSyrhzygztRstFo7EW+rixZMXFOOxAwWf70uvHCylQ4RAfh
         wDvx6lG1nLxVr3lqHmL7v1UaLSunAQ7Zq6k9E+CNXnixxBBu0E+/JrxoFgNxo0Vr9IEy
         MEc96dXSnLyJKa7ZrPmv23Rvqf32p4pec2hBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/Pm6Jl9VJEguc+cm5ebKNRMNPjprrH0Ck7nv5q1zpmk=;
        b=3gTc5NElTbHvlPWvny4Ttj0cTf+7se6lo1UFqxQW9AHlxPquQR/oricxTniqToHUGC
         8CD9CZuH1R1cH7kyKVg6rWw8cyj+I+DfNps3XONMYa2NrUbiP3r0rPq4x79HMSfKdvLh
         atD7uQGD/lwOVwPKY9abuMQV34Z/HwBrfrYBnA5kGQVSmdSX+dIGMPvj7BTFAvk6CbkG
         IAo9g2sFYRLXnMpLzh5CStidlyyRW2ti4Se1oi+5dxnd4l9lYnRNyvigS7aGPELBb+4N
         R3a1yvgp0oNE23XLMOqAB/sw1AlaamQNI1GNS0wMhXNEndZ+D08aXSvzA1PJkAmGFUDs
         oKpw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533qEkIAlr8RhdzrK2r+SXnIdQT/xgDYQzqIgrmHRnOUSjaxIbPp
	CSoAG+ZJ8fnQQ5eDTGBWIHLcvw==
X-Google-Smtp-Source: ABdhPJyLkm3rVjL0oYtlwCUxcY+kBsP7WJv3Pb6RhB7SqpbH6LYCiIcANugZGJXoMtEBqUWx8yv3sA==
X-Received: by 2002:a17:902:8b8c:: with SMTP id ay12mr204385plb.7.1643927282629;
        Thu, 03 Feb 2022 14:28:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:8896:: with SMTP id z22ls39298pfe.2.gmail; Thu, 03 Feb
 2022 14:28:01 -0800 (PST)
X-Received: by 2002:a63:5b43:: with SMTP id l3mr147517pgm.375.1643927281802;
        Thu, 03 Feb 2022 14:28:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643927281; cv=none;
        d=google.com; s=arc-20160816;
        b=oDyncAxND6RTrNsGT7dSPBZc5ClrBejGvuUwdF/QhRBDgItlCisXfGtVifftncJ/wU
         SWAuEdxBImWzb7hBWjT8AVE0BsTlLx3m/WnPhiztpeQU6ubSs9/1kS5z0rqw6mN8IwRN
         Q4ZsGjHi2zIpAaRmf2kCXKCfdAEO5xoyFBSe0TA54g/n08hY2T6c0oRyzyXfUeZ3lm9n
         oSPhWZe0nxaRuDXh9CdVH2+S7hONziIJ53wmNyiaWIoOGa0wMV5rpGZWSJY7bKeIc569
         dKoCEp8Qt6jc+uTHT9/qkDFDwVY0SQHZ1FtojO9OyhUf28mREZ4gBKNY6S/XHAL/bSdu
         dvng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=duGMxGsB/QuPA1bGwv9ppb+K/mMk4EUk821rVNi53dg=;
        b=QYIE4eF68Uscew+V8tEtyM/fEkYF49Jw/abAKxJsd4Z3Z67p+E0+faeoj8QpoEZCvK
         TXJ0FHh/5Jrk4y5bhWMXm3xWlMRrS6TiUoDxt4WPqYtnMhkKr2xuSA0lISUwHJZx/uEJ
         CriUJPhZ5RaPpi3X9TJySi2o/LuK/N9dvTASWVWSJZWHR7BMxaUAid5P/pSSxOlwrzIk
         Wt7VpBEa/nJJkU/EqcG2oxyRM/ktS0vpIN5eKykVujyb3HvsmwMP7Q7Ije0veJ/Nj6Sn
         u0RTCC8vT4Gz4o+m2BuYj3DKF9wavT5LrTzyxP+JK6T/f8I9kcL30DG4RBZBDbshHejG
         Q8Jg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r19sor35902plr.68.2022.02.03.14.28.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 03 Feb 2022 14:28:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:902:7fc9:: with SMTP id t9mr38122072plb.53.1643927281364;
        Thu, 03 Feb 2022 14:28:01 -0800 (PST)
Received: from [192.168.51.110] (c-73-241-217-19.hsd1.ca.comcast.net. [73.241.217.19])
        by smtp.gmail.com with ESMTPSA id h21sm32407pfv.135.2022.02.03.14.27.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 14:28:00 -0800 (PST)
Message-ID: <62b6c21c-7dde-0eba-7fae-a63ec168e766@acm.org>
Date: Thu, 3 Feb 2022 14:27:58 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: [usb-storage] Re: [PATCH 1/2] scsi: Add scsi_done_direct() for
 immediate completion.
Content-Language: en-US
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Cc: linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
 <20220201210954.570896-2-sebastian@breakpoint.cc>
 <c8402f76-7397-77c3-232c-c825c52ea826@acm.org> <YfwxJPUFCo5/55yI@flow>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <YfwxJPUFCo5/55yI@flow>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 2/3/22 11:46, Sebastian Andrzej Siewior wrote:
> On 2022-02-02 12:49:16 [-0800], Bart Van Assche wrote:
>> On 2/1/22 13:09, Sebastian Andrzej Siewior wrote:
>>> -void scsi_done(struct scsi_cmnd *cmd)
>>> +static bool scsi_done_need_blk_compl(struct scsi_cmnd *cmd)
>>
>> I'm not happy about the name of this function. The word "need" in the
>> function name suggests that this function does not modify any state.
>> However, the body of the function shows that it may complete a SCSI command.
>> How about renaming the existing scsi_done() function into
>> scsi_done_internal() or so and adding a "bool complete_directly" argument to
>> that function?
> 
> Let me see what I can do.
> 
>> BTW, I only received patch 1/2 but not patch 2/2. Please Cc the linux-scsi
>> mailing list for the entire patch series when reposting the patch series.
> 
> I did and based on lore's archive it made it to the list:
> 	https://lore.kernel.org/linux-scsi/20220201210954.570896-1-sebastian@breakpoint.cc/

I agree that patch 2/2 seems to have made it to the linux-scsi list. 
However, I can't find that patch in my mailbox nor in my spam folder. I 
think this is the first time that I did not receive a patch sent to the 
linux-scsi mailing list. Weird ...

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/62b6c21c-7dde-0eba-7fae-a63ec168e766%40acm.org.
