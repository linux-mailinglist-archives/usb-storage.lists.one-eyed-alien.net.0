Return-Path: <usb-storage+bncBAABBC76Q2YAMGQEDGKM2AA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id B55D088AD65
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:36 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5a569d0f7a2sf523052eaf.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390475; cv=pass;
        d=google.com; s=arc-20160816;
        b=m5YIISfkh2KJQbkA2K4LCyMdbkFWlfXFo4xu63HnPKweQT51IxboYOOP4pya+AaCx7
         5s7uLJ5fPsYh6M2GhKN79xH4t7RyZor+KW6PD6ArqOSluBn8zUTE3QU3s2YCysJOAGlS
         A5XSbP/I/nbJBwHn54VU4IL1xRnRVHEbil61Wv8cTfkoOeCgy0UQ6vCJ0rTrj+v8ZAcB
         djRkKRLqF77fcDOzxfKpKvg7R04rpTU7UCooDXEn0XwF4dHivp92W6m5rVu1/diPBLHr
         WHkf+1EfrPnCSY8RSJNCL/qQbyZKh4q/h9BUB7jo68BXaCo6lrBvMIBOoi/M1QWYnkg/
         yrFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=5Rm3aY93yuISuNYuzC2PZU2jP+aizRulI7FeMJi7dS8=;
        fh=yQGWzDttgl61UWUoNRHGLZGBG1SSQu6VyRr4gk1fT3o=;
        b=jUITzHXAs1KmagHnsHEB5zA0TPMSAcEnuVjAYH+rQ8R2igHHNsGWfFN/379PNDkEPq
         ZoDtgtCJhZ9gvlRigvyo8u+DOlsU5yhwgeghWQawNRA61aKvUU8T8ML51T/3BqFPAmJ1
         CDnCwod1th/Sx2rvFnoN5APk87mPb8RZXfIwdtkgflonqTKKzA2J5IWBgnHVqH06zdYx
         HiIoW96K6hLyQQ9FIX/qcvUjQ1ujNkbc6QcuLSFo5oaYe3S7Sr+P0bybBe4sq5dB+/GU
         hQl5ui8ixPeNybv0kp2SuN1wqGAVTYHxIod2M1F4zZLcVLvp4t1zuO9Q36Fej3KFpDqO
         VtRg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oGjvyQMl;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390475; x=1711995275; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=5Rm3aY93yuISuNYuzC2PZU2jP+aizRulI7FeMJi7dS8=;
        b=gchZLEuO5vwe/xiqz4hcX80YoEJDgLLCyrIiOw1MWeUw6WzyYbeVBB76Dk07mTHYME
         M5TOEIFVBFcYFdxZMTrFI8wBL7LhAsaM8diug8G83M7sRpp6EdFnengidfgOLk7/sqdi
         tCExmgU32GPpMCJ/v6oT2lDlpZ7IMaYigDsFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390475; x=1711995275;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Rm3aY93yuISuNYuzC2PZU2jP+aizRulI7FeMJi7dS8=;
        b=CaaVj3nGEgJhSPSNpnkuNFYFwhwQAcUNwN+gM+HK8MxNTQc4NJcA/68S+CLK1ac9N/
         aBq1iHqJxM8Nx2wm4gDxhbvwHyvK8nbiAC02p61ltX+nckAE5oyiHu0MwNQDMh8nZKiB
         ULDqSeI8exNk/KA8r+7+Arq0ZiSEoqZiAnE3Ilvwtrvb4IugtIbS2zd8hIBHNxuEyAeW
         7AOVOGKhiSBEtL0LogqCT4f5c2DOkO0gAUYtQnE+kdRDAiXJ08n5+IZ4YqWJ5WSFMl+F
         k85VcER4bKnQPPiR69JTLxdX9k5WZjQPIv+vXG1IIsDMN2J7WMuXIMITucUmJGcdOchl
         fTsg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXNTHm5GyqIKoi8r0oIXCtnFxaXoynBuklWfPi/6K2qhbWmYbAQrT2xDM+bizHiWTidpGny1ZAzUhMzVfh3SR3LX79GRb20KpLG
X-Gm-Message-State: AOJu0YxPXusOz5yw+vIhcs772BcQnVeQfParAMi2AavBYV5N1Qos/hX1
	NIIZmmLNqLnUoxB8IsfIP6v9utaxlOWgAcIYTn+XeSZ57hdCjnhMVqps5p2cROQ=
X-Google-Smtp-Source: AGHT+IE/JhOkehS+morkyBTL1fF6YsFMM0zW1R8neVysZTLSZyEvAW1jutSRUOSZraNCwjpKWsK1gQ==
X-Received: by 2002:a05:6820:2707:b0:5a5:639a:2faa with SMTP id db7-20020a056820270700b005a5639a2faamr1651887oob.2.1711390475658;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:e1aa:0:b0:5a5:37c6:7e3a with SMTP id 10-20020a4ae1aa000000b005a537c67e3als2095859ooy.0.-pod-prod-05-us;
 Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWvWbs3OyRXzBWpyDCv9htUvNeBICiynDORmZ6AbFpvIcNqT8go7SupF1MV2F0KNFG8YdK04sBYP6+nSpwvPKtauCcL6VYOZeJykWLBwmUQR4Oz88U=
X-Received: by 2002:a05:6808:19a1:b0:3c3:be56:8d7c with SMTP id bj33-20020a05680819a100b003c3be568d7cmr153513oib.4.1711390475282;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
Received: by 2002:a05:6808:1783:b0:3c3:cc09:ef6d with SMTP id 5614622812f47-3c3cc09f277msb6e;
        Mon, 25 Mar 2024 00:43:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVqIcC1ecUJeJSzZ+qOamiC9/oBFRVQzq+okzv5lIRTX8KHZ8/If5KK6SZySfLFm590q4pMkVbe+fY8pI7UGIHoF/oPJrJErFRtuflxzrFzao9LIy4=
X-Received: by 2002:a05:6808:d50:b0:3c3:c5c0:4e63 with SMTP id w16-20020a0568080d5000b003c3c5c04e63mr5913227oik.35.1711352624873;
        Mon, 25 Mar 2024 00:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352624; cv=none;
        d=google.com; s=arc-20160816;
        b=SunMcY3AfWygLvAayDiruGY31TSdS9EhRino20bMPBSsCQijcmtipcr5rwkafaM7zJ
         D7cfc27nam328Sq15ck3R0HWoW4+tZXf7SdfcLInw6bdHLOLL6+pelazvqESfgAaXmVt
         I1+VK37xVW2w/3Bp4I7jshe6w5j1i02WMvEmjCzbILUrDucCN/Qu/lmq2hN5NlPRrPLl
         +9Z5S6PTlUDKryekEuX8wDFO48jAETr+HTtwluJT4fUQn8a0a6pHrxYXvxSjhDo1OM6c
         fHX1YJwBFivnGlTapEQ8rE+4lDvBVQSz6dUl1eRKg0BK08CpYqyJE04hGDt/fYgi7Vdj
         rZWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=VcZX8C9eHNx2ohH3Vd1d8uDw9cE9WwS9tqBp93T62VrBMPmi5oVF8ys3iHFchnbYNU
         GIx/b5YlmBbY1g0nNFXmCcb2fGbxVlCSUqtzczdmsa/uRK9vmDXvva6Zt1CPMzkwej4N
         L/2SewJLOVmYkHZhgNQqHpoO4UfHV9cInBHEbSvL79NF28MFOHYJPyxuM2jAn8yd2Sue
         YgCfBCgUUR6ojWdU7i/rIrnxPtJGHM5uXna8Xxk9YgEG4LCKeOT+Vhu290OqD9QJ4KD5
         bx1FUjPsD9ZywEFI+EO2HKBCkEghCU+ads28sxJpjHK3EvjxbNYyKjH+nsDUfjyK07yP
         HEzg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oGjvyQMl;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id y16-20020a056808061000b003c1b8603315si1300030oih.290.2024.03.25.00.43.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 94BB960C67;
	Mon, 25 Mar 2024 07:43:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DB7DC433F1;
	Mon, 25 Mar 2024 07:43:38 +0000 (UTC)
Message-ID: <2f66396e-fe27-4a0b-a3fc-872bb6f07eee@kernel.org>
Date: Mon, 25 Mar 2024 16:43:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 16/23] pmcraid: switch to using ->device_configure
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
 <20240324235448.2039074-17-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-17-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oGjvyQMl;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2f66396e-fe27-4a0b-a3fc-872bb6f07eee%40kernel.org.
