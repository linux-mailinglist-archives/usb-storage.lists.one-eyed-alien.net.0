Return-Path: <usb-storage+bncBAABBAX6Q2YAMGQEMK7M3RI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 9653688AD5B
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:27 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a4b8bad9aesf4414900eaf.0
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390466; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2p8BJRxvw9MR+XS1trVsehlNl0MZ8K7Br5PF9ZBm1xQ4EMOeZWlH0pzpEG8zt4O7h
         icEmDyoq/OyY7uxmLTeHU9aujgsmqdpRRgsalEIdDPQCVMNK+IqPgZSUB85mm2zpectK
         D4JfhbDo1nO58vI9NAp3nXnM8XGkiglxckshHn1E3lZMRAs1LnL0BVeK7DLlPkeSm80j
         2nh0wJE8WQF/IwM+WzFwsPticD4Jt2W7OYWaaKkL+oYn3euPV6KtMeR3i4YbQriZNz9t
         upQg9AsrkfKxJQzMyPyKuvFIVf3pUqKgm0lZDTaS62SgcRB51sofFQr046w79Fb+yMrN
         F7jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=yEc1nQ/9UkEtHgfHktOfuD6lbbh75t8nQiAfab6BUb0=;
        fh=Xoyj2IyTj/0vCtmsgLSfcOsdgbZm0Loh2ovsZpaMyWc=;
        b=VtJ39AhX5CAoIKqtIYN+qE9aEkamTc0SPNvafhWHQ+seWJxRH8MRtj6Y4OE+XGSE7e
         0GGPPItv/bUULzjtnynqTfWyOwG/cM2L3m9gvHWv88yoRdAsKD5sbeZK2Du+yGwfZY7g
         owj6eg0Oyr9kxORk6snDDcq5844Fukghm2WOIWrumai+LwqLxeBrIKoUWrJUn4wv3Lzg
         hOR8PAiN/4NYNv8YrnoFothKE+TFqGpisSBZPCF8P2JqJ0Mb6vs75DBPeNJpsKFmtWqu
         HEtY8bmJplzy9hQmEj8HV9GzsW4aVIt+e9f5ddR5gSYunN0/Yo4oSQtAyHGUpwTfKK6s
         B8rA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="knq/N6Eb";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390466; x=1711995266; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=yEc1nQ/9UkEtHgfHktOfuD6lbbh75t8nQiAfab6BUb0=;
        b=gbsCh230WjXAMhxEQ/+tYFcd6aTh5kOtm/JWFuutWudtQ9nuKrwvlNLkYVQOGgWsAp
         b6nPzvcNSdFdo3f6uHJc2o1RlEIvwWbtTQtGHtw5xI6vjkwcHiV/ZqjE+CA3XXarQfss
         CI6PNeLgY0AnSfwwbuv0/67W3P7v6Xqbjo5wU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390466; x=1711995266;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yEc1nQ/9UkEtHgfHktOfuD6lbbh75t8nQiAfab6BUb0=;
        b=tkxUqnKuq8ed7MjF0FHhhiWjPrWKqam9sXQkxS+pnLd0I/hhc9BG2DuJpc7QujtBdk
         iSaJDmYZZZ1xoagZHS58h4v3dUhEsiudmM0iyxX4L4OkOjkcsOhIY2z2xG4XjRfQFVdR
         rdP18r3+wa4JlU1hkvzuN/0870ijjRiwJzpWnkg3vuS4lw13RB1vlvN9oSpak65HPkKn
         PlrvWD0NokFRbYTNnVuOWL1bieTnl9GYsAKLSYWj4z/EAD1YSwe37HBC7x1b/PQD5kzz
         yrMnbNTzKqmqCDCInNnXH816VkYdrdf8p+sW2led+vTHVF+S2aO305AQMgl3WMIYmdnO
         lSPw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVxlRRYuQiCcQo4TMgno5LBrtwExFWsMoOPX+XTH7PeTEOdFJ86fKhI2VEr9S1fUxNOXksfJu662LeH+bV1DbReUYIZinsFMytG
X-Gm-Message-State: AOJu0YyFMQOPzO3UxBGy4uRmiT89E12lCJa8Rd+Yk2uyp9Z5hQKUgcuf
	3a6eRPcm/JvVUDvcJJTCJZTKbRwWhjeK42uF97uRaBg6//KxX69KvlLp0UjDz7I=
X-Google-Smtp-Source: AGHT+IE0Vr+Pb8838B3abB/ZTiBkVs2AL7IEKceOUtULXJsJzmkzv9uYKmE9Ffj/rruW1tfzQYT/3A==
X-Received: by 2002:a05:6820:20e:b0:5a1:8ca1:ae47 with SMTP id bw14-20020a056820020e00b005a18ca1ae47mr7037213oob.5.1711390466475;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:bb92:0:b0:5a5:3718:5787 with SMTP id h18-20020a4abb92000000b005a537185787ls2161614oop.1.-pod-prod-02-us;
 Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVihq60ZrVn3ml4vu1Gjf1g3NdGWmPUvJGDZEcJchO5JqSPWNyxbZ4zgtHTnI6m5A7FeRsDqWLSFQQpjMOPpo3X9nzkeTFlpPQskDBh90fS9hzGPao=
X-Received: by 2002:a05:6820:2208:b0:5a2:27b1:93b7 with SMTP id cj8-20020a056820220800b005a227b193b7mr342694oob.0.1711390466118;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
Received: by 2002:a05:6808:2199:b0:3c3:d110:85c6 with SMTP id 5614622812f47-3c3d1108aa1msb6e;
        Mon, 25 Mar 2024 00:27:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUM39EzpWZZcvJEQ47SAxDwK32wwuB/C8FB2VlgiSGM9VlJAJDwBdWqPBR6cyTPpTjucjAORIFCyIDrpmIH8nZeU0Y5mjEp525voIbmCjuQOsvw4/M=
X-Received: by 2002:a17:90a:49cb:b0:29b:10bc:acaf with SMTP id l11-20020a17090a49cb00b0029b10bcacafmr3935654pjm.30.1711351625892;
        Mon, 25 Mar 2024 00:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351625; cv=none;
        d=google.com; s=arc-20160816;
        b=oUGP9xdIGnbxbL2mNKiSxjs4W5iCppZX0xPkoG3WujmJTB6r0E+ji7DFIsrHC/4Ahu
         JxHISx9RXiMuyfZvBe85fdZwkBSPAV/fbmbmtUlkW4D8L/kSfGpg+mVkH/l0yIH0QykB
         gsWeGxXHnJhPW/JVeHKp4euZiG2Qm+lfpiwdTyT/icmJlO/ma7tp/wChDa6ya8qWKwNL
         S6bmR4FMKitjhve+f7hdXYJaYhiTb/IEOn2vu+wHkm1qnymNvgBMzQFH0xtPflwLTFZp
         D9sF7X3DeyA5Wdl+abAjjEc8FRcMeeJFMhc9dCcun3N8sZsOsVyJsFn4/X2BeDYHJ/S3
         jWCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=j0gtE3T+WNBbtVr720MjtWg4V4wVySapuGzGIGfMhCg=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=Gz9DnNxfYHnCRWgw0CBft9zX/BY0VLO6gqM5CvuxWnusVISffUCync5M8FSsV7UGXe
         04oy4gn3gXbbiApbcnCxNKve6TyX+XVxzhTRDdBOcgzswPBV9gODW1aaqKFjLWLD8DLY
         saptvk3UE2XiOl4MUHISEHknNizqj00maWESbmb4vjpE5PiD/+1td6Wo1ClzAam3q7lK
         FMfpBPM1wR919xRG9TgbZnJL+WqQD+vhAanWMpt//4GM0L3eHQ2IeRY2jFyR0ykeHcte
         xLs2ySeTS4yuddo3mevF0kaciDjXymV1hZgXKvNV7X+hlLKBFcxIxYMHOfvUM2PUIMB/
         zD4w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="knq/N6Eb";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id g10-20020a17090a128a00b0029c0e9781f0si7204705pja.2.2024.03.25.00.27.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 21AEDCE0ABD;
	Mon, 25 Mar 2024 07:27:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F25CBC433F1;
	Mon, 25 Mar 2024 07:26:56 +0000 (UTC)
Message-ID: <80162a6e-12d1-4fd4-ac74-dc5388853323@kernel.org>
Date: Mon, 25 Mar 2024 16:26:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-7-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="knq/N6Eb";       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 3/25/24 08:54, Christoph Hellwig wrote:
> While we really should be killing the block layer bounce buffering ASAP,
> I even more urgently need to stop the drivers to fiddle with the limits
> from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
> centralize this setting and switch the remaining four drivers that use
> block layer bounce buffering to it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

The USB hunks could probably be moved to their own patch following this one ?
But otherwise, looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/80162a6e-12d1-4fd4-ac74-dc5388853323%40kernel.org.
