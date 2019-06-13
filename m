Return-Path: <usb-storage+bncBCCYRD4S2ALBBQGYRLUAKGQECCUN4DY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 4077644CDA
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 22:04:17 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id j18sf16360439ioj.4
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 13:04:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560456256; cv=pass;
        d=google.com; s=arc-20160816;
        b=qJUyhpKxbr7PEUNokqjjRXyNg8F6kwskXczL5orWBOlypykukG9L6GOPhr7qdJfUrA
         ZZFAbaYGvoFrs9DK9WnX7yhEx25th4Z0AxYOZAsSkouXbEXfNePWWnf+yF4DHmmoJJdP
         PzitQEaJWTlmOGoS8j5XSE6SfVjwZbW0pLkG2v9GWX1mvdJu+r61ikyokqGWsdc7ylF9
         UZKFnzEJruQSLoyY5gM6YDI2Z0EHQycAppDsJvHgzohdDa4/TbpF2qUPg98kIS8Oiz0e
         9dKM4NqtmktsqLjG58KecvJzZ94eG6j9nHXePZ09i1e+aMMAqtaiIihhazagQ065EvfE
         1aiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:thread-index:mime-version:in-reply-to:references:from
         :dkim-signature;
        bh=taUcTspasoA2VQx1qjxd9coeW0JWUXPB9VCoKnvJBew=;
        b=mUZxR4gjIpckWpaPyCgMAY9VXg6+JFsUbmsPnxdmV/jhHU66CmD1Z4mvQY1sxXS2mz
         pFNx1ONdwPnn7OQ+7jtnjrR2N335KQI3el+9ETZhZ8kQoa2iTZ7jWxy2Gb5vL6jL6KJc
         UBddaKWTegFbYhnDXA1EPdtFhQ1+n/iPbLMCX812sllvxArLTvWtb69HElg59uKL/4XE
         BPKkoBUFSoSUOtyMP+dXYtDxaNanxeY1U17RskSPkWEayJ646ELKV6u/t3prSHH7S6df
         4QEom0k7tF+D20JlQ9ia933g1MktZd3zGdLuZtpuYxS+1x6eVrOPxV+O3LfHjcuFqZWF
         i2yg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=Vf0Co9J1;
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=from:references:in-reply-to:mime-version:thread-index:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=taUcTspasoA2VQx1qjxd9coeW0JWUXPB9VCoKnvJBew=;
        b=Mv0+T15kjWFb2TyrktV8pOuJKP78si8PpuLZh9/+9FsI0nKQDO/lFT1T95162slfEr
         v1kpTYVF3gBxqe7EnlcLFeUaX5zjsH6xzC/pQ8VOYY2qr7+Tdc6p2accKTO2jSpMCgZb
         y8APsgfj6kwVNU0yS32g99cOCZgz74XR24uUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:references:in-reply-to:mime-version
         :thread-index:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=taUcTspasoA2VQx1qjxd9coeW0JWUXPB9VCoKnvJBew=;
        b=LQMTzsKTC+KDyqL49ryBnookNpGpDehX8eUb1nshmRzfVDRmAoccj4YJCdL/NIUlJF
         Am39jZyZyF4tWGijHj+viWXRpEP2I4LZAZIqiG5oNi1AT5oyq2WNfYFlNdA1YL6zRv5s
         WPYFqSeZLUcNRMGxXgC8V3RFKahy7ux8kHuVoM195EhS7jADaix6300Wf3AZTJUrD8Al
         VLzuX8fWKnBXLJzFTKUVren6eniCpFxtx/I66t2VSIGE44tdRlE9L4qeV8xxgOQ/qm0Q
         IFI/vHGd1tiSm5sQ0SIDgudkUP+by+zNyJoDUCnYviCFx152O3GLql+qwqU2QQgU+NKX
         9uoQ==
X-Gm-Message-State: APjAAAXxLSAew4UZS9U2Y8bqBztjGN4gvIR7V788l4kfylgfTl/K7Amq
	C97SnNZG4jxRetTNQkZff6M=
X-Google-Smtp-Source: APXvYqxp/089pqFYKZQWNz833IZWssV3Mk47I7hZ+pjavxLBuUFMvhG8HDKZRmnoX+vYvn9A9oxQIw==
X-Received: by 2002:a5d:994b:: with SMTP id v11mr9268508ios.165.1560456256246;
        Thu, 13 Jun 2019 13:04:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a6b:d018:: with SMTP id x24ls76463ioa.6.gmail; Thu, 13 Jun
 2019 13:04:15 -0700 (PDT)
X-Received: by 2002:a5d:9e11:: with SMTP id h17mr54623920ioh.261.1560456255923;
        Thu, 13 Jun 2019 13:04:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560456255; cv=none;
        d=google.com; s=arc-20160816;
        b=WgG9Vo77JNRIgMpKE/W9qWp8X4wo2B5Ct0qh8dQPpPFEV77m2vAncp5nBinEJSylny
         ViEBnW3OgqGN4T1YJW7U0oNv7saMCyKDlOqQGU+TPAgP3VYUBOHovv47McT4jlYgf+Hq
         oFu5NJuopwjwvHd8Vrz88OODCQP7oFXzOLl9+bg+Un1E/moLYjx3R762RPUsobrVGdTD
         HzGn71swuu9NgS+h8Oa/DaeDV3gqYhzYIUUxDSu4jFeSPRm9uJccHbaZc66f70aSL77a
         KnDcqs/frvXfhRKFZq2dSlsZWOzslBNdx2OtefvUY1bOHbdtIrdsX1VKnRkHO0FQfL1L
         QNiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:dkim-signature;
        bh=DI3nny5EkaaAj92ROhz8+oF1JyVO+F50iFiYFfny5cg=;
        b=G/N0WmfitgqTwIRgaHKjmHyFPnnNEWGfoHdApqzIP3250pTy/Ql93hlci9SoY8JbvI
         IpmAmuQq+rPGrJEtFfUOhg4pLFQdPAvILrRYxosbHnVtaNL/6xdiWEu9JR5XQiZD0SSi
         uQpqitlAYvU682LmFRrlZ/P+nFN4wQoHpJ4jRiuvmy5ahWU1ltqVdHYnDm4mq6QEyT6W
         dtZXyoNAjY36OG33GW4DsoXMg2oeF86IF8RKu7VawX5KjXDZYSXTI6B1/94MBwU9Zf/J
         BFaHtelReV3oxFrQ71bRuwAfnkgm6ghnAoMu7W0zO8TpubAdJbBak8MmSL+8LQNTpfVG
         Ewfw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=Vf0Co9J1;
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q5sor532507ioq.99.2019.06.13.13.04.15
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 13 Jun 2019 13:04:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a5d:9b1a:: with SMTP id y26mr37376851ion.238.1560456255599;
 Thu, 13 Jun 2019 13:04:15 -0700 (PDT)
From: "'Kashyap Desai' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-11-hch@lst.de>
 <cd713506efb9579d1f69a719d831c28d@mail.gmail.com> <20190613084458.GB13221@lst.de>
In-Reply-To: <20190613084458.GB13221@lst.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQNLjZIO2zMn7N+9xPobnDbFSu4o5gI2RJdJAgF+bYgCEzcr9aN60eSw
Date: Fri, 14 Jun 2019 01:34:00 +0530
Message-ID: <d411baa1bdd34f1a1289480d13fe1cef@mail.gmail.com>
Subject: [usb-storage] RE: [PATCH 10/13] megaraid_sas: set virt_boundary_mask
 in the scsi host
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Sebastian Ott <sebott@linux.ibm.com>, 
	Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>, 
	Bart Van Assche <bvanassche@acm.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Alan Stern <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>, 
	linux-block@vger.kernel.org, linux-rdma@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org, 
	linux-scsi@vger.kernel.org, 
	"PDL,MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>, 
	PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>, linux-hyperv@vger.kernel.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kashyap.desai@broadcom.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b=Vf0Co9J1;       spf=pass
 (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Kashyap Desai <kashyap.desai@broadcom.com>
Reply-To: Kashyap Desai <kashyap.desai@broadcom.com>
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

>
> So before I respin this series, can you help with a way to figure out
for
> mpt3sas and megaraid if a given controller supports NVMe devices at all,
so
> that we don't have to set the virt boundary if not?


In MegaRaid we have below enum -        VENTURA_SERIES and AERO_SERIES
supports NVME

enum MR_ADAPTER_TYPE {
        MFI_SERIES = 1,
        THUNDERBOLT_SERIES = 2,
        INVADER_SERIES = 3,
        VENTURA_SERIES = 4,
        AERO_SERIES = 5,
};

In mpt3sas driver we have below method - If IOC FACT reports NVME Device
support in Protocol Flags, we can consider it as HBA with NVME drive
support.

ioc->facts.ProtocolFlags & MPI2_IOCFACTS_PROTOCOL_NVME_DEVICES

Kashyap

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d411baa1bdd34f1a1289480d13fe1cef%40mail.gmail.com.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
