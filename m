Return-Path: <usb-storage+bncBCS25756ZQFBBZOHTKXQMGQEHKHGIHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 166DB8714F5
	for <lists+usb-storage@lfdr.de>; Tue,  5 Mar 2024 05:47:35 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-1dbf8efabdesf45576305ad.3
        for <lists+usb-storage@lfdr.de>; Mon, 04 Mar 2024 20:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709614053; cv=pass;
        d=google.com; s=arc-20160816;
        b=i4KKJt+ruYRNRyoaA+gkfZvdR+bJtVwSJ5z5MFcJi9qilrzEZE5CUn82VSAUwPOhsg
         rRZWHjFD8f+Mo0yOxfIkYxf4W9dvQNCJXwifK4wY79vWqhU19AsGLXPIemisIixlnNpg
         afZD6bYlt2ViKMk1FOT49dDGKmXeS0CJmrDQuBxLRPF461jpb8laFcHg1LQzLYjdA0IG
         jaM8vqrbzRpltCZusHMF2gHUpqnQ8awvqgWndbdxot1XnZGXmGaSWJkMLz1gE+f+4+Q6
         8uI5oOCJa08dRtAVQZdmn0fVU2jnftoBisUFIAZQli1IbK5dDVCMRm3JMKjbGxFhv+Ww
         hD8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+bsemvsRn0DLT7gU9h8yVp867du+Erws9x0u3ihm5iw=;
        fh=V3ypnEBjhLMF8iQNYaWt8c75bH9MvJxVoiI56E7TUnY=;
        b=fqzRCBXAUVBrrdavVhVKTPbrPAJl75s+PtJzLktmuGKhWHalXWB6OXXCV2BWBhBEI4
         +UE5Z8YgL1scbKywyKpcGDCkXkU4dJSDzK4jt01SVZXHB1rHYWXdDVcZv8sVhTHKPwHg
         U6Bv+/rkuCs8vfovsFOOeLc8xipn8dWr3KzE2UYUjPC7AXmY8wREvzyvx/NX8tjdB1S4
         XqSwLQ+j6mCxLm641MWYJCmhmKxUfBQtijTVpzxeBb6mHoEQN4acl2p9tAfZ57SeVA/G
         CFJFZgDzZN7eugcXuVTJRqwnw694OmYPiFamgjOC4tY+syJnEKkfsEEOAeiSA8a9Jhbi
         3hFA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709614053; x=1710218853; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+bsemvsRn0DLT7gU9h8yVp867du+Erws9x0u3ihm5iw=;
        b=lT1GvyT//nt7mUw4pUB04wcKRKGdj2uv0DF0L/N+W/53p1I70cdJTbk8ji3u7pegXt
         TWmtsvcnjRAJWutWVftQSYm72dAfmFhAxXb3YzMkjZv6/yrRKwobUEgxeuhcXWDcLiqj
         onqUn+2kJ/Kpufx4KSYWXfaZGeu3ZJsFkU1Zc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709614053; x=1710218853;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+bsemvsRn0DLT7gU9h8yVp867du+Erws9x0u3ihm5iw=;
        b=bZ4ca5Xjuv2SxQX4OdyRttmEipTZsV5hq/J2GMqpUP0l1BDJLRH5R74nGFaXtlepnL
         2v7gdzrftGHWjVQ0bPZD6CaAUeyf5gA3UMk69XY54QyO9FTlGCsIQMZVkai3xVm6j9wX
         C30L9uzV9oF3UKAS9hNXN49wVPHa3bY0MR1HZyKXHGmhIXXowWtb3NpGetqpyRP1MgBe
         lsgKHwhD8zY9xAta7JbhuUv3HLbYFCU4vgT9YjKJ70MT4XAor0Em0uraVE72CeJ07H2J
         LEegTvoHc7mqKGtYv8xUhF9TGwuP4Yy0CWGMItZow56GduzMg4edr/jXNIb1Z6rH1c7S
         oASQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXEoQLYfrfH3sNrPWglKdSx5UBgOhj8zYPJbWPMzKSZ2zcgRVH9/PoF/014+kemcc4v/34dkSJyXs+cKhJSqJ5h/iey3nRKf9OJ
X-Gm-Message-State: AOJu0YxEW/vzTAuqniS1clN4/SIgbMUvedlusFM/RapMf+ye2HiTLhL5
	7Wq8f1tDVmDYwM3Nb6zbEsbtQStAu76RsG5b1h+Y6QXONmHC7216+Pljix9Pifc=
X-Google-Smtp-Source: AGHT+IEywfy9JSQVSRgCsFlffqqGAxGq96CE4sNBk4/qx8kYfbDRnihUGEvrTT1YZ5/tSuc+An6YXw==
X-Received: by 2002:a17:902:9a4a:b0:1dc:8180:5d6f with SMTP id x10-20020a1709029a4a00b001dc81805d6fmr689577plv.30.1709614053438;
        Mon, 04 Mar 2024 20:47:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:c944:b0:1dc:dfa9:5593 with SMTP id
 i4-20020a170902c94400b001dcdfa95593ls260551pla.2.-pod-prod-04-us; Mon, 04 Mar
 2024 20:47:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVstCKCETWHNv7XitLHoF0NnLdZgwT94F/6MN3jQpel6ccdViVnszMk+loJjI9rw3nZ4qdeX7+c4GstG90lwTvF/ykhyiB0CvSQK72hbbxEmuQ4778=
X-Received: by 2002:a17:902:d58c:b0:1dc:d116:1a3a with SMTP id k12-20020a170902d58c00b001dcd1161a3amr912548plh.62.1709614052144;
        Mon, 04 Mar 2024 20:47:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709614052; cv=none;
        d=google.com; s=arc-20160816;
        b=wpAQDfYoSt96CCsw9szJaC5uAA+aESzxi1zCbKUe+8F0zGefOrb/3CHv6NlAt8MLm/
         gWyTuWXM68p68g3sI6zZZSgObvrPxiodGTS9l7FamDxwPQIt5EI4mzMbpm7vTwOKMR6s
         9HicG6g7LqC+tUyGUQFSHAxgEaNMacaA9KTdwwU5P5tkBINan0bQwFsvaI+Os3KaHK1D
         /meZ7nllufAjgt83YWaOooT2WIyhcurZX0lcjd8Xcr5tETm/gwTdXISQl2FHSD2L+YlI
         qmkuRDqEbwNN9qBodNwB5oJ+NjjdVAw4LAC/2x+EeAPTJbwoA3Eo5FG0qDHyjKsPvj6X
         FE0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=zj8SgP6I01VoNsEhrJ5ThEMcJLB2xqm63HrfyFIyxw4=;
        fh=nmaI1J8TG9Q8YSKXs7cT4j1Bk9tsQ7YJmTnajB1TFko=;
        b=HPkRfFAXdLFRUDd2u+4EmZ3CqzWTgMctRMraI3W+ogd0OFaMqqvDkOPG/9ydgA9CJY
         ERRuFW1xL9hkBKqE4WD0KZDq5PJSg5xD0s+PLphGgsRdAEb1qmSdlEGM4B6EDXZcbPku
         QKKf2K44KtlP9Jj+Webva0nkq9UOMZrGiHC7ajnQW8r2BM4rfKCoTZeNaiWjyBjDwc09
         d/Z74R7VXtQ46MMdr3uGYr/poRj2ddEI930iHUFM/l1O7RHblRK8B9e30sNS86ezFEq0
         zzaRcnT3TBamHXpD/lugJdMOr9DJfGvb47TCQzXwQ1b8OmyC39XAYvBzk0/Es+yC/dLL
         wldQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id lq16-20020a170903145000b001db47573c41si9703202plb.57.2024.03.04.20.47.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2024 20:47:30 -0800 (PST)
Received-SPF: pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: b8b30e310b114c15a8e66cfb55f18167-20240305
X-CID-O-RULE: Release_Ham
X-CID-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.37,REQID:c592d5d6-7113-4a2f-b3c6-903d88475371,IP:10,
	URL:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:5
X-CID-INFO: VERSION:1.1.37,REQID:c592d5d6-7113-4a2f-b3c6-903d88475371,IP:10,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:5
X-CID-META: VersionHash:6f543d0,CLOUDID:ada81e81-4f93-4875-95e7-8c66ea833d57,B
	ulkID:240304224331GLBEOKA9,BulkQuantity:8,Recheck:0,SF:24|100|17|42|101|64
	|19|74|66|102,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,RT:nil,Bulk:40,
	QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI
X-UUID: b8b30e310b114c15a8e66cfb55f18167-20240305
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 340706475; Tue, 05 Mar 2024 12:47:24 +0800
From: Tom Hu <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	huxiaoying@kylinos.cn,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Add Brain USB3-FW to IGNORE_UAS
Date: Tue,  5 Mar 2024 12:47:19 +0800
Message-Id: <20240305044719.524767-1-huxiaoying@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <eb015716-7695-4567-a553-0b6960cb2026@rowland.harvard.edu>
References: <eb015716-7695-4567-a553-0b6960cb2026@rowland.harvard.edu>
MIME-Version: 1.0
X-Original-Sender: huxiaoying@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=huxiaoying@kylinos.cn
Content-Type: text/plain; charset="UTF-8"
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

On Mon, Mar 04, 2024 at 11:16:56AM +0800, Tom Hu wrote:
> The UAS mode of BRAIN USB_HDD is reported to fail to work on several
> platforms with the following error message, then after re-connecting the
> device will be offlined and not working at all.
> 
> [  622.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                    inflight: CMD
> [  622.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                    04 00 00
> [  622.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                    inflight: CMD
> [  622.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                    00 08 00
> 
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly, so we need to fall-back to usb-storage.
> 
> ---
> v2: remove junk information from patch.

No, the junk information is still present.

> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>

And I have to rescind this Acked-by.

> Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1f8c9b16a0fb..98b7ff2c76ba 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_REPORT_LUNS),
>  
> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
> +UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,

The junk information is the "0x1234, 0x1234" values.  And if you try
removing it from the patch, you'll find that the patch doesn't work.

> +		"Brain",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),

Fortunately you can get the same effect by setting a module parameter 
for usb-storage.  For example, in /etc/modprobe.d/brain.conf:

# Brain USB HDD doesn't work in UAS mode (tag field not set properly)
options usb_storage quirks=1234:1234:u

Alan Stern
-------------------------------

Hi Alan, 

Thanks for you advice!  i accept it.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240305044719.524767-1-huxiaoying%40kylinos.cn.
