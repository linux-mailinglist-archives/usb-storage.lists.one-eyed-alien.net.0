Return-Path: <usb-storage+bncBD3JNNMDTMEBBLFD3XWQKGQERKVBR5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3D8E7A38
	for <lists+usb-storage@lfdr.de>; Mon, 28 Oct 2019 21:38:06 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id s137sf9501772pfs.18
        for <lists+usb-storage@lfdr.de>; Mon, 28 Oct 2019 13:38:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572295084; cv=pass;
        d=google.com; s=arc-20160816;
        b=iIIp+dcBwcNJqOM+CCAljaM4yb5lzZaYv6dYEpwR4Zdbv1E3pdZ8gsr2E7RhshchBm
         mf04sR6jdnQmj/OqOFOuY9k5HqnFsO7uzdpUTB0TBF6ns4ar6s6Xs21xJzBxoeuL5yA4
         VyKZv4sjW4Z9EPsSYg7B7/e2LW9iSLRhddxiuqzpmt9jWufB98DeV+8sauT1Un87hkGj
         SzFqshAIillYCkLUqNPrQlUqA06wHY0Siitrpdi7xShd7NVcDgpyq5l+CAhIDvuOkqwP
         PYpYeQj/FachDXfC4z3zbE+tv8uGrBt9LkLF1WJGAQfPI3JF6gO2e/9LsGc2frwPK0vH
         Dzsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=quuUu+LYN7ztqdxpmpbCZ5Ob7f5vXAliwc6TfVnIjSE=;
        b=mCV7tG8oTp9Ss/OOzLRz+1deL/oMFA+oCAlIQfAikKiOE/pgdwkRsPWeCjSjobsPhJ
         +ShRmMWXFPH/5DqKW8b3iZX3NHJ1qmKToqfTj76kj9ZAHYVCkpardlFkDxFlmqSW9HnH
         wBqjb/kxRayilQMQfIAUMYwe9A1o/gC+q6KdmVCSvaw7dYEUiHKeEyHi12xXK/ou9SzZ
         hSMHApAeF6LiCMjMOUUypXBvyvv2LTyzIXFTtzQe7oReBvMWvr6RYp7czMiTBoIuO+aQ
         qow6F3Ttr+CwaOqj5wCr7BIyypObu+V3dRyHVbxZY3S+G4WutrtINgCWXinUkyGKtO9v
         7jkQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=quuUu+LYN7ztqdxpmpbCZ5Ob7f5vXAliwc6TfVnIjSE=;
        b=R7Ca8B9ywlE4CriN9SKdcTNVgTuk++EBt36+3q5zemQ2Z9qzpduNOJ22qc9klOuhuj
         q/fAqLkKLZy1PHgdlnT1j7Nn5XhLc+X0rUprtDKykHDxU0xr+JvSNXBZBEjEs/AJrg19
         VUBIxNuKe1tYwNzWWGXur+p3Uf0DG5+uoF3L4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=quuUu+LYN7ztqdxpmpbCZ5Ob7f5vXAliwc6TfVnIjSE=;
        b=eaeAplaE4K4NgWUwrHq05E6WC5XFuOCcQyKz3/8Op9Sz/CGTpitFDikQ7nYvcK793j
         ZKbr9rt6+QGdtK1sgkvLN3mfjl3kSOBqJW1wzaPwH0WBlnFsF9Tyfqgp9rr11VI8lpzI
         9IKiNL+tJ7zsO87ZCMmn0/OraxB/lZu5bjlOobSpD0LoUUwAR3Rrec0x2qZ4GMC/KJEH
         5Yd1rgaIdLrUSwqnzJ9pZUt+i9Is83qhiSQhUV15TArRccgXkqqVagVNJgah5N6UZUlU
         UNieARNuI3AU4KGbORtSpiKyN8awqkgg2/17KDu5tJ1Z6m+J3xxy6RCzPhTxJXVDDTwV
         MUrw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWwa16q27Z9byp437iCcSBMc5VAfUqlkDA9RmMi0bBTNQBVir3H
	TY3zHegdVRo8SEohDXE0AzWYpA==
X-Google-Smtp-Source: APXvYqyPcWx7ID1rJnSagp0YVAZ35KqpbJyVXOmRyieMkFrLK+k2aJyvhtQny7+TnvmiQlCbyNoPng==
X-Received: by 2002:a63:f34f:: with SMTP id t15mr23638250pgj.453.1572295084626;
        Mon, 28 Oct 2019 13:38:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:9c01:: with SMTP id f1ls3403131pge.0.gmail; Mon, 28 Oct
 2019 13:38:03 -0700 (PDT)
X-Received: by 2002:a62:75cc:: with SMTP id q195mr22699445pfc.133.1572295083917;
        Mon, 28 Oct 2019 13:38:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572295083; cv=none;
        d=google.com; s=arc-20160816;
        b=VAvK637yIbXaGVuRkPAO7IJaLAoz8GBzflAW3d73Spffjv/W7qaY7AJEnTKv3Wc7OH
         cpN70sMGf4AJ0jAYgrs2ruxM21GDmVznfsT02KAG+gQudskN1+r5ZNZfkhHUdb+KmCaX
         pwVldmtff1OWcnb5OR74kxGCJnbMKEwn9yXb0Eqbd8CL77KsE9m/CrdD4dHzML5QHdkU
         2XgSvrzL0FvzQbWcN9CUGJu9dF96cY8qkZaEpfKhSxJ3paCKlRn7XalZsFCaFoD7OeoE
         qXaq7Brix/AHsSUaTThkxQcpJZbq92hQzoghv5t9dl5RM/5dJUxlybIZeQsxP/QT8aQT
         ilSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=O/b/6mghHgpstK0O5SxbK8ykdy2XcpdcIv0f+yaSsWg=;
        b=vroILdYE50rYw7GFEAmb4NGmEVoaehYq1EePJ/wRFOa4GGOL4Ql5q/Cec4g2k4Gxr5
         lFGzSZ66L+u11OHD+uJHcK1kqSbFP5EuZCV6LR8HlKr2Ftn8EREoOEXlLoxYsubaRB/a
         MQJOUo8QonYdi4ZgZL2axQZc9JFqqDkLjhr+npH4cfIMMI1G9G3nmWoLr4uA8+CGB0pa
         SvHjd/j9g9V2e1Ao5RRsHQ3Lw6LoxQq2QCLTGzH4JY+NnYC7ck9iENMz5afrHQ3lXHJu
         hcvfoSJK+yyNfrkIESJH5TUEeFm94yVVu0aO6biR8/A66nKARHJfL8ZT60NVFY8yX9aD
         D5ow==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id e9sor924413pjr.4.2019.10.28.13.38.03
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 28 Oct 2019 13:38:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:8c14:: with SMTP id a20mr1497653pjo.77.1572295083533;
        Mon, 28 Oct 2019 13:38:03 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id 129sm12561232pfg.38.2019.10.28.13.38.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 13:38:02 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
Date: Mon, 28 Oct 2019 13:38:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028105732.29913-1-damien.lemoal@wdc.com>
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

On 10/28/19 3:57 AM, Damien Le Moal wrote:
> struct scsi_cmnd cmd->req.resid_len which is returned and set
> respectively by the helper functions scsi_get_resid() and
> scsi_set_resid() is an unsigned int. Reflect this fact in the interface
> of these helper functions.
> [ ... ]
> -static inline void scsi_set_resid(struct scsi_cmnd *cmd, int resid)
> +static inline void scsi_set_resid(struct scsi_cmnd *cmd, unsigned int resid)
>   {
>   	cmd->req.resid_len = resid;
>   }
>   
> -static inline int scsi_get_resid(struct scsi_cmnd *cmd)
> +static inline unsigned int scsi_get_resid(struct scsi_cmnd *cmd)
>   {
>   	return cmd->req.resid_len;
>   }

 From the iSCSI RFC:

    SCSI-Presented Data Transfer Length (SPDTL) is the term this document
    uses (see Section 1.1 for definition) to represent the aggregate data
    length that the target SCSI layer attempts to transfer using the
    local iSCSI layer for a task.  Expected Data Transfer Length (EDTL)
    is the iSCSI term that represents the length of data that the iSCSI
    layer expects to transfer for a task.  EDTL is specified in the SCSI
    Command PDU.

    When SPDTL = EDTL for a task, the target iSCSI layer completes the
    task with no residuals.  Whenever SPDTL differs from EDTL for a task,
    that task is said to have a residual.

    If SPDTL > EDTL for a task, iSCSI Overflow MUST be signaled in the
    SCSI Response PDU as specified in [RFC3720].  The Residual Count MUST
    be set to the numerical value of (SPDTL - EDTL).

    If SPDTL < EDTL for a task, iSCSI Underflow MUST be signaled in the
    SCSI Response PDU as specified in [RFC3720].  The Residual Count MUST
    be set to the numerical value of (EDTL - SPDTL).

    Note that the Overflow and Underflow scenarios are independent of
    Data-In and Data-Out.  Either scenario is logically possible in
    either direction of data transfer.

If the residual is changed from signed into unsigned, how is a SCSI LLD 
expected to report the difference between residual overflow and residual 
underflow to the SCSI core?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/eb8f6e3e-0350-9688-58c8-9d777ba93298%40acm.org.
