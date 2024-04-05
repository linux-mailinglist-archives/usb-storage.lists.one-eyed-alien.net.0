Return-Path: <usb-storage+bncBDUNBGN3R4KRBWVYX2YAMGQESQV3O5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F8F899599
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 08:38:19 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id ffacd0b85a97d-343ee8b13aesf101678f8f.2
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 23:38:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712299099; cv=pass;
        d=google.com; s=arc-20160816;
        b=be2xtro4zp4Gm82JSVFcxN+NZdD/ZRK3jdjAjhoTFETKQ5ZFH5tkddIxJlmm+rHIJl
         oPCXC2oHRQmJPWDFDQyt7HsOP/VJ3EkctBdK+KKzFH+tvTaMaXfZldYfiFdWQX2T4V4p
         qd+pmj+Dd5aHXe0fYZbI4UBEznHnCEfJVcYNIEPQVewpwrhfRusIQJbaO0ZuWkwaNjTH
         jfXmcH//ZLxm6LSu34Jop9drwx48TbGmF001ZclLh1thKy6fE6XjXrCAddQNHO9rL7dF
         ykKWFqjhEuF4Thd85PohervyUIx3fevyyshJIelyy4RqYuRB7VIz5LmrQQZYIZGFFQ3/
         HuHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZVwnrg1GV0lhlW3LkYXYacv0n1d7cDbLUz4WU3qUjYE=;
        fh=H53IcdcU0W/G60KgAK3dTkoMI2r5YpbcLzPXkGaup34=;
        b=H9/LXuY6C90nqHVG8w4v73Ry7rzP+l55L8pysi4A9o1Bscc+PxbmdWVKaovq8tDlM0
         W7eUzaz/D2P1iLz4iOYlInuXAWSW7hqvL4HqckGEqFiTEoV6p8hX5eJ6Wemq0x/OyrtW
         m414vZg2aoc2GG06nzhRg1sImyQBAgPbpmuQzFloOZtn+C97UwSLvy6GdQR8udly42sz
         r/u7DhIjankCrmfa5aweRXQCQQSSsxNYwo2Z0WgpgD2WDb8DYNVBmpPkQqVR9iIPKa0P
         xQTFDIc481sq2N4OT0tafiqN8+FkAcQpKpSbg4GaY5Hd3dRTWdtOiiSIICuPUUE5DcRl
         FYZg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712299099; x=1712903899; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZVwnrg1GV0lhlW3LkYXYacv0n1d7cDbLUz4WU3qUjYE=;
        b=RbuWCC5Rzi2+x/CSqey5tcifzlJRf/A3DRtupuX6O5ZCqnO1xYpvXPT/ja1PARVoFC
         gVfO2T/3W0YpCP3HzwPM4yB9HrsmO7WQGyhsZxu9HBWRxyBbacarZtGsDewFd4PRxCSE
         RsU8hCOOYzLgZ8u5WfzTMhehobn+Yv+xEgrIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299099; x=1712903899;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZVwnrg1GV0lhlW3LkYXYacv0n1d7cDbLUz4WU3qUjYE=;
        b=nA61GSKOGh4il+j/QbwolDeIWHKrKo5fQo72v5YLyB6o0kSIgvezYwXqn/Xp+59CFp
         elPnppGaG5UpNA563EhlPSy2TZ8epmiC1U2lKRUE543ygNxozHMClZ9Jnm4JkUW4kou7
         /4f6+Kq7Dsyo4lxOh/xEMNsfGZnUnJIQNfbBH5a2IFn6yR6KOcJHtqhuWXfssvJU4a6w
         JsfqZOhJTNGRvTsEUh3b6xiDT+PP90k+nF4CSzjqex3gyciy3kbSaJ6LdWGhMyOT6NIm
         cxAzl4zfdXPnFClbMFzV7P1rEYu7nPTMDCzGewG3I/9bvx8CfRlRxlmLbZMljpzuV6bD
         jQTQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUUENqON1fcIiPiCcIwQRGz5VKZanXDercHzSNACYnwdLbXXb5FM7Jz1C4euxxFRP4QmUIbqKKFwBrDKxb0cxdQftY1yZ7wGT1c
X-Gm-Message-State: AOJu0YzcwXWc0t3vv9WnwcfFEPsKMWxJTQ4RpWLkHv70pQLy3QC9w4S2
	FwqeOzCDsJJAsuCTwwtwZzo1jLoVhXj0mJIjAsKYt1BmUwmGaY0fKIOMfCYYiOU=
X-Google-Smtp-Source: AGHT+IGGuCvgimykhQ+yuYPq30fMvYzzSGcM+3u059iB/EIBpJ47f4RxWMORcZRI01ZxX9D6NBJ6ow==
X-Received: by 2002:a5d:51d1:0:b0:341:dedd:9726 with SMTP id n17-20020a5d51d1000000b00341dedd9726mr528951wrv.3.1712299099270;
        Thu, 04 Apr 2024 23:38:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:4012:b0:33e:8dbd:5dd9 with SMTP id
 cp18-20020a056000401200b0033e8dbd5dd9ls883908wrb.2.-pod-prod-05-eu; Thu, 04
 Apr 2024 23:38:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWWqtCQnHE9+b1DR75m/IMfpnX47AXUPnYwyt0zo6uUjVprTsQmjq0zKZZeInaaeVxqDov6jza6S6WZNDzTqXpxF8wqUU9TH3AINGbU2TDslt9QEuc=
X-Received: by 2002:a05:6000:188a:b0:343:39f4:3f2e with SMTP id a10-20020a056000188a00b0034339f43f2emr714497wri.5.1712299097117;
        Thu, 04 Apr 2024 23:38:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712299097; cv=none;
        d=google.com; s=arc-20160816;
        b=oPw6Y7CR1D3JHFy1ZxEQZaFlf3HOpa1lLIe7JGcpi0R84+2c0WUNbb8hE4YZCBXHnZ
         v+LENuBLTN39MfTp4Va91FUh1wfSshAMCeCvhqbe4TGG/58zbwwbhzRq9jaCEZE+pyhG
         wdoGeFeUFiJBtMk2fVUYeQXPKwc8QQb4IHA110alECUwoRO2g6VTxOkvjVjkJwoec4er
         +B1/Vt5uB1PMnu7vz0nLIbN8K/OtvBDjBgg0ZssYRXd6aLmVTdEjh87tqwyCFVnbs+a8
         mabQyCSqCVu2pF+9lljMSnXIle60BW/xBPfc+JTC9Pt6zvfCH1QNj3xXzJe9hyr1Na7G
         3yyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Kh7Gp5r6NoW+z9wUEur68g6O0iQhuL1pGF2KOXa72I4=;
        fh=O0spm9G4llVPbyHhJ041MDy14lImw6/CKpM6ogn4cVU=;
        b=Bb0FlJfwYxp9NpBbw17WhucabvCZmdJr25n4AQbr3PkTMmG8wIcLnrFKteBgZ5KgdW
         enEZkYVvTpU9+LHDOdzJP5CNEH3/k7iPA05G0BGk/4zJxnLX1JJXK29wYFhYScO1eyKD
         1JsGzBoBiBcCHcjXBF4TiTKprYa+LnLysH6/H715NF/2Juif3y2jNbdjCTnmwrQO0D6F
         DMHlg5fFJk+nluu1GUWGVFuvDFV3HEW1ltfGZVhl1EAZfRxSEYh3b2Ve8SPHcMnWXw6E
         OK6C3tjZ5cde/z6TE/ghX4q7kphNv2qcvrk+xB3TV0cZEwKjtB7iZUaNVzEpSF5eXqFR
         rNmA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id r2-20020a5d6942000000b00343c6ab5538si568211wrw.836.2024.04.04.23.38.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 23:38:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 36CB568D07; Fri,  5 Apr 2024 08:38:13 +0200 (CEST)
Date: Fri, 5 Apr 2024 08:38:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
Message-ID: <20240405063813.GC3480@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-2-hch@lst.de> <fd99a58b-37c4-45dd-a738-cd2b49341c70@oracle.com> <20240403125116.GA19332@lst.de> <34c1f31b-2a67-4c3d-8efa-b08a50f20e31@oracle.com> <20240405063418.GB3480@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240405063418.GB3480@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Fri, Apr 05, 2024 at 08:34:18AM +0200, Christoph Hellwig wrote:
> > Is that a known issue?
> 
> I see that too, and it really confuses me as we have the proper
> annotations there.  I'll see what I can do.

Seems like sparse lock annotations are really confused by inline
function, because if I create an inline wrapper for
queue_limits_commit_update that does the locking, that sorts out
the warning and removes the need for any annotations.  I'll cook
up a proper patch for that and will ask Jens if this isn't too
ugly.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240405063813.GC3480%40lst.de.
