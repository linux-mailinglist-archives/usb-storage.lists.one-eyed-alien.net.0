Return-Path: <usb-storage+bncBC46RKEB3EGRBCVY7PUQKGQEKIVFEGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A7578AC5
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 13:44:11 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id u21sf38322242pfn.15
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 04:44:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564400650; cv=pass;
        d=google.com; s=arc-20160816;
        b=gYTGXqbkjmYP5s8w0snJLdmtkZBjg9nzBbB+cB1MTp713g7IZy6FEnTaAylZaXMsRM
         RheBl14iok/RcVZviqcJb5jiLouapa0MWN/pF7EqPOo8wJ/Pg5T8LXlr83p79bsiww5x
         XYDsPDS9K1/hXarBLxE00CpobsmQ09xVIybhLnUGcX68O/w9IMTZDm6+RnVqxi4LuiNE
         2lbk3sj7c0vTMmoPNa47KDJNe1oAJNmTvhaHqs6vwVa3cINPTSjqd8dKF3wJalIQ8j2v
         4EnoNRpm4wPDumEY7bV3zr+j4gBXEVKcm5fla4HaN7NNvp5dO3qiecdQFeovErPEPHlW
         P2vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yLyvXfiTfD97uheH6JHlm2NUk0eFb27ebVlq40oGfsw=;
        b=VJ+f0usLLi42IFPEulrt4FJWgl9grRAaEeOYlor4xfeUDB2frn4oo9kBztqZz+aTKp
         m0jy8uLTyheHf17PFEzHC3GaGJBi2b673Lv6w4HwEoGc+qbrQFwycM9s3F2G2Uzwu4DN
         BSzMoW7czwhqvXcZiDDSCW7OG8IF3X1QZnOZoN2IKs5gDeHjSQmh61Im6OBQuOPA5gdU
         FnoGmSYYxOL6/8SStNwsJP+DTT+QcKuHCAn1dloDbZYbrYIQ3v1sXIRTa96lpZgvj4ik
         ZS24VF9RlsPbrMhihmrVOshB0ilm6UVf9aU3lFJ3S4qHhZjARcafMQMFl6v0unj/VB/Q
         BC+Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OarXZMdj;
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yLyvXfiTfD97uheH6JHlm2NUk0eFb27ebVlq40oGfsw=;
        b=XqgE5NLCanqX1Y3kVpxesAwru/SC9ellcn7aNPMh4C+iq1SYPNuNph1eVL0g6mBN5G
         qt/dM1Pzfk2M4NlXU5+1waTeUq8ZfKqLqqN70aqAd8zsVbWwCxYxGSpOiwnhWwEGRIox
         jNAipcpwBxZ02Mp67Z7uKzEjXydKBPQbnSecY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yLyvXfiTfD97uheH6JHlm2NUk0eFb27ebVlq40oGfsw=;
        b=O5GSqIuQ+2SAsfWhS6nS6erxmKvcVf5V4O7FDVICri/Ux+UJlZGgZ9xis50cErBa4M
         ylyG1nO+UfNgiIdLfLIQCwT0/VnX9SQOTDRMCotndlv24FSfSws1crnb2sfsd9y8E8Of
         i4WjZTeSVxXBBB74ISHQrjCdSM6p1X/VsiJBF//yT7Ys7thBq2GIbdYG2YKU/8ITlNii
         Bp/7JhY2poyd15j3cO6dpHt8H4slGiH1K2DuIVUJfswLOfs6VaTDlRPfwdPk1ajj5QwO
         lePvTnRGnMh8Qra4/8SQ2gA2oVtMRtvCp3FOVe8jcvBB8ZxPsI1pRykOA+QJOTQZVLG0
         y6Tw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUuMWRoNJptQRhJ68R/33Y7ai4MEEZnVVFET0sW9wtr6UwZR93w
	zZM5RYg/lYZrOvsqDyY5rn4=
X-Google-Smtp-Source: APXvYqzfdgAGpIkJ0/SJMULh0ET6L0jtCk/MFJVdBt/2aw0OL6UK+ORWtSAe31iuNR/znSjP1aL0tA==
X-Received: by 2002:a17:90b:94:: with SMTP id bb20mr113447709pjb.16.1564400650124;
        Mon, 29 Jul 2019 04:44:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:3fcf:: with SMTP id m198ls8926898pga.10.gmail; Mon, 29
 Jul 2019 04:44:09 -0700 (PDT)
X-Received: by 2002:a65:44cc:: with SMTP id g12mr26070471pgs.409.1564400649694;
        Mon, 29 Jul 2019 04:44:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564400649; cv=none;
        d=google.com; s=arc-20160816;
        b=y+kEwZGoCtH84FWagwWq8euns4CY21nXagw2RoAEfklbsTp+jhTicxfrn9Prvj3bon
         TcE2pJTNmlJ1OvAYDuHKLZyQB0muujOiKNNyZN1L6sh9ORZ6XexP2xYmdS6wGY4LHLDT
         /RVU59GB73PUErW4TRka/QhlSXfVct7OY2gqC+evTRdWTRxe39B9SB6v29Mt0MZFV3l0
         TVOAsEQc8bXHeZi1MTFc4bq8+GTnrE3nEv7TpIguaFXlWszjTTaieOTyPhqProrMqZH6
         ubcwdCMxKyFWyRIxgjbkpshhmG6i3BSqXlbPkttqBTt6NQLX5vM/B4bvLODdvpn0HCtq
         F1Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/GdbQmHDgRxOIS9Wz7Qs+ZEMMYW4qyH6JYf9o6A1T0U=;
        b=U2IA12LtWk6oD72S3mSRVrPCtKwN+vi8xsbbwM67iZUwjceGGOoXQvlhGxINKHhsbV
         Jbd6yDK3irtCYs0uzWfV2TTMRzJ/RzDP43t6aNs01yFSV+xP0SVvIcUfHfdy2nikUTDS
         LGRs9hi7hbQzT4dBavz9AEXQA1K851GS2lSKwL2emV7q0DY7ROqajPyZHiw1eSMnrn9P
         d0c4FE6wryOxxDoYplUayUEaUGTGBywR27H+n2g93znSRD+N8t80hpibwiUP18E+Qhjr
         Y0XsiKSR90b3JRVQ7cT8ZYOrxYISUOGxrzoLXsOwZguXIH1wNd2mFFeiVHuek5iFb94O
         3UPA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OarXZMdj;
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id s14sor74784176pjb.11.2019.07.29.04.44.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Jul 2019 04:44:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:cb01:: with SMTP id z1mr110535882pjt.93.1564400649494;
        Mon, 29 Jul 2019 04:44:09 -0700 (PDT)
Received: from ?IPv6:2402:f000:4:72:808::177e? ([2402:f000:4:72:808::177e])
        by smtp.gmail.com with ESMTPSA id z12sm42867392pfn.29.2019.07.29.04.44.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 04:44:08 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] usb: storage: sddr55: Fix a possible
 null-pointer dereference in sddr55_transport()
To: Oliver Neukum <oneukum@suse.com>, gregkh@linuxfoundation.org,
 stern@rowland.harvard.edu
Cc: usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20190729100555.2081-1-baijiaju1990@gmail.com>
 <1564398922.25582.6.camel@suse.com>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <8d21d256-8c03-7864-d45b-fb7f2590721e@gmail.com>
Date: Mon, 29 Jul 2019 19:44:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564398922.25582.6.camel@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: baijiaju1990@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OarXZMdj;       spf=pass
 (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On 2019/7/29 19:15, Oliver Neukum wrote:
> Am Montag, den 29.07.2019, 18:05 +0800 schrieb Jia-Ju Bai:
>
> Hi,
>
>> In sddr55_transport(), there is an if statement on line 836 to check
>> whether info->lba_to_pba is NULL:
>>      if (info->lba_to_pba == NULL || ...)
>>
>> When info->lba_to_pba is NULL, it is used on line 948:
>>      pba = info->lba_to_pba[lba];
>>
>> Thus, a possible null-pointer dereference may occur.
> Yes, in practice READ_CAPACITY will always be called and set
> up the correct translation table, but you can probably exploit
> this.
>
>> To fix this bug, info->lba_to_pba is checked before being used.
>>
>> This bug is found by a static analysis tool STCheck written by us.
>>
>> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
>> ---
>>   drivers/usb/storage/sddr55.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
>> index b8527c55335b..50afc39aa21d 100644
>> --- a/drivers/usb/storage/sddr55.c
>> +++ b/drivers/usb/storage/sddr55.c
>> @@ -945,7 +945,8 @@ static int sddr55_transport(struct scsi_cmnd *srb, struct us_data *us)
>>   			return USB_STOR_TRANSPORT_FAILED;
>>   		}
>>   
>> -		pba = info->lba_to_pba[lba];
>> +		if (info->lba_to_pba)
>> +			pba = info->lba_to_pba[lba];
> If you use that fix, pba will be uninitialized when used. It should be
> something like:
>
> pba = info->lba_to_pba ? info->lba_to_pba[lba] : 0;

Thanks for the advice.
I will send a v2 patch.


Best wishes,
Jia-Ju Bai

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8d21d256-8c03-7864-d45b-fb7f2590721e%40gmail.com.
