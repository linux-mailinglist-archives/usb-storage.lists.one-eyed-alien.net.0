Return-Path: <usb-storage+bncBD3JNNMDTMEBBXVNS3XAKGQE5VAJB7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A183F5101
	for <lists+usb-storage@lfdr.de>; Fri,  8 Nov 2019 17:25:04 +0100 (CET)
Received: by mail-pg1-x546.google.com with SMTP id k12sf5141135pgj.9
        for <lists+usb-storage@lfdr.de>; Fri, 08 Nov 2019 08:25:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573230303; cv=pass;
        d=google.com; s=arc-20160816;
        b=MMa8jT5pyiCK/AsE2SykBeLqwrF0UsmatbAyz7p6xWF9wOOlD2XCkxq5M/XdBa6hBt
         kxeM7Emh7WJsy9NeI4F6KuPAjxqmsep+qPaI6T6LNVAg0AZX4LHqaVuOYX/Uj/VihdQK
         TzmDX9tVcxnnBvyDbQmORWErTabhOqaO/rmNLLrHenQTETXjqUNw3GwBzh/Ov1BTvtIS
         dqlHS0CmtsFrYEgO6hQ9ofBVJDt47Ov8GUWknDCJ3Ij/YVgIaU34DwSpfkm6iPkn1xOK
         U0qwGVIhjdkhO6jKc1XoDon7l7N+iUaDw0M/URn0sSUnRoGnRzDja1otjKLea25/eruM
         jN6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=1GWeVNAfrsuGAqlSFLGfSHqqc+kEcRo9vSSb9LB59xI=;
        b=mCWwKaoIstCv54di0zyZ5GYYH/7EnLlZTARR/iwCTr1u+8pqc/YCcHR2CSNW3n9JQG
         OKMlifRPO6v/z2YWYxZAUf66KxDmyG+htVqJ8cG0l3qOXjB9NqSCdcN6Tldc8t8GuaMp
         +dleHax0Yi7logfrU7+xHbcKtoNb+LPAKwrkHA+SnFte7JICSxsXEii9ItyzqYkYESL+
         YpTbQ6L76KdpFg8OKxTaZ6ZcId2vz/uubEI8NLgVZZ+puWl9O9ah7lmdWX9h2buV8Gwz
         3Mv+T09G6isyUDYDMAbBcpXcjQmfikWWTC5aP2YTo9CTTduMjUwhMYf7+lIXDmc2nuGI
         W7hg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1GWeVNAfrsuGAqlSFLGfSHqqc+kEcRo9vSSb9LB59xI=;
        b=EdzdJ4PBGLoFhVaSiAIlQ9UOcnBn2jcEJioNY6N3DDLXhQQRJGbTz8IMWdMpc+0Ddm
         LCS2P7ahGVing+J9z8lTsGR0cYYswr/uYdWULitjH1p+cpd56Svgj9j6w4Tf9Ymr39Gk
         LhSFuxjfZL1ubryvKP0/LZ+KBtC+XwJ62hX3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1GWeVNAfrsuGAqlSFLGfSHqqc+kEcRo9vSSb9LB59xI=;
        b=HKgVyQUNVI/kpgxEqcnSMIj2by82IGnhDK9bQjliP7LYdqmSW7qOAizjlXiX7Jg6Qf
         cIiNrjnwo/X8SvpbdhucFntTDbjSMp6EMQdm9eznPyWktxbPDTYZw5F0i7tazd7NyC2s
         OVKjL1BPGkMz1vX2fxrGsvgZwjDMiUA4jQPBAUKevANbCKJNUhYf6Fgj39pcM1aft4mE
         RSioQQVApBXyaz9USHp7q/R8UeWLV5t/x3GrgI2RZ+tAabPHnZoEGE+0jEFuADv4wtpb
         0zejGBhzDmhxf/Y7R84TCW46RGzOAQICfNcPNi8EoRG+y6UGPoBTVdyYD/xHTCh+0rKw
         yCYw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXjDFQ0qnecyjSJ6SBU2Acmqq7uq61o+M1UgqW4Fsfql0lOCCS5
	iNXAo6VUWWNDz4n9IBtASVOJgw==
X-Google-Smtp-Source: APXvYqzkU3Nam4NuRntAXNdXaVM4of732dio7Itl/08iSAT/euG+ehKSrBHRS1BQsrYac1GQl3pfJA==
X-Received: by 2002:a17:90b:3116:: with SMTP id gc22mr14901067pjb.32.1573230302941;
        Fri, 08 Nov 2019 08:25:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:5302:: with SMTP id h2ls2496864pfb.12.gmail; Fri, 08 Nov
 2019 08:25:02 -0800 (PST)
X-Received: by 2002:a62:8748:: with SMTP id i69mr13126997pfe.224.1573230302136;
        Fri, 08 Nov 2019 08:25:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573230302; cv=none;
        d=google.com; s=arc-20160816;
        b=jjc++vRAVZv3bl29hHwC2MfptqiSuT/sPYCQFprthryLW9LZgebor15djoELLmbJBk
         JVlneliTFB/8QbFAQs24dPYcUYtyhIV+rzC6wAfmMFpiXVreZSyg8KSlUdML26U352BG
         BlWY/cueHa2pNGvPvIH0o2ejrEM3nLaW1fnfFehYi1xe9foS/dYHwMS1LHwdLCKnaJlI
         zbLUA9DI0DlD/33gbiTwHRQU6XfgBP+2rU7rrNrWQUTqUkdvrfb1wMXq+yUb36/4bTFT
         3jSyfr5cA+jUhTCqXg8NAkzScfNDYCjKsv8kJRC32AqDxMVMYDoD6MoDMDbv8TZn94nO
         xYvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=9+uoj8lNodCH/yF6mbg/IXWpHQI/7No+l7A/rtoNzfQ=;
        b=j910bacHYQxmRPOMcddAfgLYRMD7QaLp0tzPg4SCwdwtAGDFAk7CrdHsUNlyr2/ooe
         UpWUf+0MpYEdS66vHuYY94iYKH3Xw1oyTFkZqjCcTqeVoR4ZqkuEhXJcDBL8uBsCQakB
         1X4hvYAZFVq5LryKn5QULyQSr+pYGiH0Xjbs/Y/uqHaw71K3QLUIeXqz/ST1fBy0A0pp
         8amliiLmAsLf7/VKYhrTAeBLdFKDmdT+TPiKbfh0vZhRu+BmKAXTKhVV7g9YTKqssvte
         MRUoGSgam+5MgzgwWmfoSH+Rs2iOiUCod6Fw+TLohr7bXzJXZo7H90Lp/vu4EVnCytku
         gdEQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id n17sor3952017pjo.16.2019.11.08.08.25.02
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 08 Nov 2019 08:25:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:6283:: with SMTP id d3mr15111619pjj.27.1573230301739;
        Fri, 08 Nov 2019 08:25:01 -0800 (PST)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id s66sm8704017pfb.38.2019.11.08.08.25.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2019 08:25:00 -0800 (PST)
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <11fa0f63-9a0f-faae-1d11-35f21cc64717@acm.org>
Date: Fri, 8 Nov 2019 08:24:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191030090847.25650-1-damien.lemoal@wdc.com>
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

On 10/30/19 2:08 AM, Damien Le Moal wrote:
> struct scsi_cmnd cmd->req.resid_len which is returned and set
> respectively by the helper functions scsi_get_resid() and
> scsi_set_resid() is an unsigned int. Reflect this fact in the interface
> of these helper functions.
> 
> Also fix compilation errors due to min() and max() type mismatch
> introduced by this change in scsi debug code, usb transport code and in
> the USB ENE card reader driver.

Since there is agreement that residual overflow should use another field 
than scsi_request.resid_len:

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/11fa0f63-9a0f-faae-1d11-35f21cc64717%40acm.org.
