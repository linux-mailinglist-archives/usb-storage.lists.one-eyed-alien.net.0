Return-Path: <usb-storage+bncBD3JNNMDTMEBBB6S43WQKGQE6FVYQTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CACE9EA5
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 16:15:20 +0100 (CET)
Received: by mail-pg1-x547.google.com with SMTP id l194sf638010pga.7
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 08:15:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572448519; cv=pass;
        d=google.com; s=arc-20160816;
        b=UvYqaF4BfpoDc7gLlYKETwyeM5dWYXdx/v7xNN/Y4RFsLR8CvWjeNOB7IzlMrOP0ym
         Q5C9tFq4180BiYvRZBGOVcIr+Z4BIAUaRCoDMoz4mFuCM7HUjeBMHLfJ6/QDnZO/Okmt
         Dl7Ji+AurRvRCgbmdB+jlyeXV7k/XuCXMSvwyXyc4bKy20Dx+iiwpSt+rsCi705ADYMA
         6AQFfJt4i9gUhXuNMiPm7kSQa+R1CvAv5UdPXw/7l2RWiPkEN66qQYbEtEDGkPkLfBXN
         xky6Mn0bSzR/WY5P73nHEiNsbns7iCR4IKgujl/blLqh+BBJlNjked+Wp8owbX/IHQN3
         fNFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=30itVkpLHEePLDk5FDlPljYEolwuPFyTs46bOdhq2KY=;
        b=o/cybnN0hD6ktim8rEne0BKQi8lahE7qBVxVJoiT/I0+9dDebJ6wu4q7rJb7TcDYLL
         8uTYw8k4meI0j0I9Veoi5f7F866iqUIF6Oi33gytWredHSpQootBTmo82gZjX0T5t/Xa
         R7W6D6NYIhXeJtNa4ecAVke3jJiMx8h1uuzpH4N/JqkPxAaOy+GaSjsCvU/wp1q7ipOt
         MQ2INtMKWvDMlxn5i/hDzgAUN3YXr/CFxMgJEd8r3HBY+yHM3m+xz71tfwJO0A2AXsRj
         5GofDIpzEp+0Rm90C87kua7/3mKD5Pek543I8eoYzPyKnpAJly6UxAYHKMHYdESLB2zP
         AgoA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=30itVkpLHEePLDk5FDlPljYEolwuPFyTs46bOdhq2KY=;
        b=Dh8lN+mL3g9iYGbPM4ABAshBOWjjzOBy4ZCgtqC5TI4+chQfwZ9oRzKAzn2YiOcPKL
         IVqnBufvaMMNQef/H4EVqYeqwJlWJtb6BlOI5EoGdaTCUzzsbVng9TYXrYwKrS17qbPU
         zi98Xi3vhP5oqqTfYgsxeu9Uewj1fNyAZuUPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=30itVkpLHEePLDk5FDlPljYEolwuPFyTs46bOdhq2KY=;
        b=tjgJTAEPD9CwEfIygx/5/EhwReC9Y48trsix8dhUoMcouXUK3+YFkNAXAWupD7mBEC
         elSdpKsoEQ2bRdwfq3SnpKZxpNMC6DayEXx1Wxr03qvTm7caz3X5VILwbHTMxTyIvKh8
         kjbnwKp+r5Ov1MTefVOmnvP5T1PZK3e7B3BtGnS6xjR/TChdi2f9GL+hJq+iW+yKN7Iq
         Gx1psVtqw7J9/lxQauLPpZO9Ib1dNM8nj/lwzIL+CxoKgk46IER6sk4mBMDODhBiNpx6
         HjnFoVv3T58TMDOIMsri7zqyccQVva2Wd3OSNZ912Xf6JySMCdPiIWpBWn71KDKkW6Ef
         lB4w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXeNFILlqMvv5aO8bkJDsVUT1QL4kvKWN1MSfzYNUfY69DHQJ90
	B2s175v3sKgjx3k8+71rHMRc+A==
X-Google-Smtp-Source: APXvYqygNe5L6HhD8A6DPHyGHs9w9qBoMvYtWcjzcmVQkwpRZrZ045b+FkqITs5tYYubrc3ww0M3JA==
X-Received: by 2002:a65:62d2:: with SMTP id m18mr34285283pgv.117.1572448519302;
        Wed, 30 Oct 2019 08:15:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:6947:: with SMTP id e68ls7760169pgc.6.gmail; Wed, 30 Oct
 2019 08:15:18 -0700 (PDT)
X-Received: by 2002:a63:cb4f:: with SMTP id m15mr35614631pgi.325.1572448518365;
        Wed, 30 Oct 2019 08:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572448518; cv=none;
        d=google.com; s=arc-20160816;
        b=hzBnJ5kiTCnCh5R8g0hduQ2iIlEL7naEffVnhZ4+AmuKEH9UQEMY9OlYejYXdRKnDl
         jEyoxIiwyjwrL9xwyd8+Gos29Z+t4nt8+B5R0+82HdY+7iK0lAc7kNIZwu3t0T9zJC6T
         oTBa/j073UhSIIpW+pl3YxtySZUUcy1nU9GVVakiBfZooBPdPQRKRhkIiG/AWu/WCvNe
         bYyvCIzpn+0HS/fainwJOJMORDSlYzdHIOjcPYhfRKOM6XvO+zBVrwYXJ4TfmWVGKlrV
         mQjWbKC6huFyQb4Rimkx+IpYnDmT9Za4EcW7fdx2vpVMGQQDLDBUU9k7viE49QL2kG0F
         GnNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=X+f7Q5A5Y2bGz0zmlOAyoSSUqrUDISfufa4bR7XqeLE=;
        b=h9PtXPbpW9CE75liZkn6FusjvSMjgJXzYmdAlcoAEVOmnhokr8Q+2sLYeQPLENSbQg
         D8yviSlES9oIbRIStUG8FEl3O+Anqjo8OfUlkaPE6uuY22WlDN1wcCDRtbUQP3F+xfjS
         zb2BEEJN2zHoSwD22+n5u65/2J1iU/B5wEjXtOs3TZMTOEjGN/MljO21aCug+ojl8rZL
         nqxdHVfqJHGWDScMZgSAcEqKCo0wA7gXyjjoBvZPn761MJ6kTIbLRE2mIE/Pu9OzSbzU
         A4pdLwuh5VYyFQ+EUEeg7ya6UwHo+ZhtY7gGCnM9rkih7DGMc4pBSCHjxRMWA2H1IdxK
         g0+Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id d22sor2777189pjr.27.2019.10.30.08.15.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 30 Oct 2019 08:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:a406:: with SMTP id y6mr15137830pjp.106.1572448517964;
        Wed, 30 Oct 2019 08:15:17 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id f13sm139711pgs.83.2019.10.30.08.15.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 08:15:16 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <af516590-58dc-0377-5c54-ac63cffbafc8@acm.org>
Date: Wed, 30 Oct 2019 08:15:15 -0700
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
  Please answer my question about how a SCSI LLD should report residual 
overflows. I think this patch is incompatible with the approach used by 
the SRP initiator driver:

if (unlikely(rsp->flags & SRP_RSP_FLAG_DIUNDER))
	scsi_set_resid(scmnd, be32_to_cpu(rsp->data_in_res_cnt));
else if (unlikely(rsp->flags & SRP_RSP_FLAG_DIOVER))
	scsi_set_resid(scmnd, -be32_to_cpu(rsp->data_in_res_cnt));
else if (unlikely(rsp->flags & SRP_RSP_FLAG_DOUNDER))
	scsi_set_resid(scmnd, be32_to_cpu(rsp->data_out_res_cnt));
else if (unlikely(rsp->flags & SRP_RSP_FLAG_DOOVER))
	scsi_set_resid(scmnd, -be32_to_cpu(rsp->data_out_res_cnt));

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/af516590-58dc-0377-5c54-ac63cffbafc8%40acm.org.
