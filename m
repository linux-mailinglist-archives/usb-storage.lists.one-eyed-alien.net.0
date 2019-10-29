Return-Path: <usb-storage+bncBD3JNNMDTMEBB45O4HWQKGQEW63X46Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 971B2E8B93
	for <lists+usb-storage@lfdr.de>; Tue, 29 Oct 2019 16:15:01 +0100 (CET)
Received: by mail-pl1-x647.google.com with SMTP id q13sf6844561pls.16
        for <lists+usb-storage@lfdr.de>; Tue, 29 Oct 2019 08:15:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572362100; cv=pass;
        d=google.com; s=arc-20160816;
        b=iu18zkWPt1pbll6bGalQ/P2KkeNvLqcnaJss09Y6TzFgGk5leA1s6hy9kNfksBjWai
         6DXY2CSLE10MKuYfgyAq9GVOsaKIgyskOnvafP3JIXj8o+75Wx5QxEMEezTDwS2nevlo
         G3ROv+goN7FtlxhWE820gcGBDMzaid3mqFT2yvNmxNrkJB2uSvcoOIY8P2b+ATd4ZRru
         u4IwbooCX3uNdw0DOv6p+aQchwfWBCeMQ4AQnOdQWuGrJIJlwwr7AMKf55CQU+RNBjY3
         Hhoj1kHNwV/o4yLPQM6nJl7bNjR4NCAKl3LAZgIyhMB8yqNmgvOub+syL5vfZBGoE9wP
         0yvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=8lglZrENEsfVemrT68hM6QTa9MXtzWjU6plUkODH8rs=;
        b=jXwZO8ZtX+ibIz5d6pJe8TWJ318G7tciOvsC+3MMnmIwW5MumDnyAB9RTdOPY6tYCj
         oDsjISNgWSeEfEwJd7hFzQyJl4pPew5Rf3EFYIeaYcP+6Np5TooHHUdxmR00IFHoJN6z
         ez/pv1mYQAh5RQFJ409J8W9BASuXYr9MtwiZIyJv9zLFPNHf2n4tVKOYvuflgSGtR//G
         RzUX3kgI1cli4hu25mLI6Qg/ZB+ZPmJdbbURuF0CjovgP2MF3zrxyYW6gNOFEy98vQTQ
         38FfMSU3vngPmoL+wPq24uq3D5ZGAO/KeTVxeyCsbLKCCdRtqIoOMxrM00l5P8xyW9mW
         te9Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8lglZrENEsfVemrT68hM6QTa9MXtzWjU6plUkODH8rs=;
        b=L0ktpXis/PscDO/RqBUTZ0DTxgj0f6JuQmUHSLzpZTWWYV/28bpTItvg1QA4Qqa2QC
         WdRjl41UAS3WdeB94kN0YH831jofoZJY1i1Jirp4kxGBxf/knBKYpkdE6sD7yC0piQW6
         FWDBIVy7vVVoTbNOuPzNt7KQjm9dL4EZHACYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8lglZrENEsfVemrT68hM6QTa9MXtzWjU6plUkODH8rs=;
        b=cnMT30IO8G+ay/qBWxvakOMtYO0Adc7J1IgMci/+Il8qyhLeOelhzcFrhNSghYpMKO
         19jagxh1Pa8mtVu9ZiytUJ99kfcmuWtsqBVngH0nFPIFTQ82PpOtGDaWL6IJq+NBa4sx
         8xCKwmnnd5bqjLEtLQ8WOA37WYqhvhM3KJWHuNSa2r8w7oJWKhebRjmAKYT2ZKlx62mk
         JLw2KA0qC0rHZX/01EBbRv4SRiyBFK7HMP4rqFmDxAt4d4HkuRIi7CvN03BeiVJ3FWpA
         q8PS2v612IUEtkMrfjtbHeGPH0LWj76imqebBKHp26s4A8YlchKQKiY0so5MW8jv5wkm
         9wow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWkZdH6I9VF8xSKozZKr6wwLUOd+HsQNBMQP5XebhDmX/d5MsrS
	uIQuP6QZ8C87IoIk+AJmyBc2QQ==
X-Google-Smtp-Source: APXvYqwFZ+8DWlpE2K9DBK/GqiXCJ3xCYyREibLVyyHh+K4+OrtBMDuiPw7yOnaXQhgDQlzQ++8hOA==
X-Received: by 2002:aa7:8210:: with SMTP id k16mr27595560pfi.84.1572362100079;
        Tue, 29 Oct 2019 08:15:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:e517:: with SMTP id n23ls6848370pff.5.gmail; Tue, 29 Oct
 2019 08:14:59 -0700 (PDT)
X-Received: by 2002:aa7:96ef:: with SMTP id i15mr9646602pfq.242.1572362099358;
        Tue, 29 Oct 2019 08:14:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572362099; cv=none;
        d=google.com; s=arc-20160816;
        b=hOunvBaMbt4i0Q8gtrKrNQou6Kfgxcsq+bI+6th9yQnXbTh/D51IH8TcoS7kWMCNOp
         hQhSxEm2Hk5qaUPxCp41ZiOBPJFSZowMEHKhTvRsQjhfvXoQEawCBFhW7k79s14HUJoF
         qbhcPqrzNaAH2XBsa5JxDBH47HXAw44ufBV/5oS9cknb6/T1Hxxcpf1QJ8vJfELaR8qi
         dgGHfNScLegF4nvDb+6urAXVX11hP55fnW/S2cAr8/RA+F7AwoM1vv8fCVvyVGqjnTGv
         ebSvSugWkFjhYY8duLJwsQo916scbkgexjiC7E3IYBhoul9FL1neUCVV+VhiPEMewpCS
         Jb0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=BpdmLBrAF6vIWkMIKjmn2Nztml/ALZp4Q1mNNsAX6zA=;
        b=ArHW5R8WXebuW+6PaldbMpfvJlIHtv0eeHhfUjFwpCLcN9F2OLNcu9TMeVh1/MH4oA
         GXJTrPyVYOF89Q2uy4BaEou/eOrLOVJBWyiI1fFzBH8WHjUlukx+3gDwWY+2rOrAp/M3
         VtC/Sz+bmrMD/7oRZR7nK/iU7JuI6dWP8LVgecvTZUJbL7ZlIvVByaa1a1FzJaWwHsyJ
         /FBQyUithbBm5Todm7oV9TdbiOlEZ39rIITDH0uneRAfuKgfv6Ng43o6chxkaXDqOH9i
         O+YgMMfBTf/ZvkR9vuZRlPg2Nku132htz3tIn3nDpi4bomXcF4F6UMwSU2P5Er3KI9en
         W71Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id t129sor13610256pgc.30.2019.10.29.08.14.59
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 29 Oct 2019 08:14:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:cf45:: with SMTP id b5mr27606615pgj.36.1572362098980;
        Tue, 29 Oct 2019 08:14:58 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id s23sm13708158pgh.21.2019.10.29.08.14.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 08:14:58 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "usb-storage@lists.one-eyed-alien.net"
 <usb-storage@lists.one-eyed-alien.net>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
 <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
 <BYAPR04MB5816FF25422E60C168F78308E7610@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <7b3cad63-3c0d-0bff-b400-acf85344bfee@acm.org>
Date: Tue, 29 Oct 2019 08:14:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5816FF25422E60C168F78308E7610@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted
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

On 10/29/19 1:17 AM, Damien Le Moal wrote:
> So I think changing the interface to unsigned int makes sense in that
> context. Also, unless I am reading this wrong, the above definition you
> quote always lead to resid >= 0, so I do not see what problem you are
> worried about. Could you elaborate your concerns please ?

Hi Damien,

SCSI LLDs handle residual overflow in at least two different ways. I 
think the iSCSI initiator handles this by reporting the DID_BAD_TARGET 
error code. In the tcm_loop driver I found the following, which I think 
is incorrect:

	set_host_byte(sc, DID_OK);
	if ((se_cmd->se_cmd_flags & SCF_OVERFLOW_BIT) ||
	    (se_cmd->se_cmd_flags & SCF_UNDERFLOW_BIT))
		scsi_set_resid(sc, se_cmd->residual_count);

Seeing this made me wonder what the best approach is for a SCSI LLD to 
report a residual overflow?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7b3cad63-3c0d-0bff-b400-acf85344bfee%40acm.org.
