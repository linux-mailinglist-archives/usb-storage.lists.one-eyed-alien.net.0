Return-Path: <usb-storage+bncBAABB4WEU2FQMGQEA7AEOLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FF442F737
	for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 17:46:59 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id s18-20020a05620a255200b00433885d4fa7sf7070548qko.4
        for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 08:46:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634312818; cv=pass;
        d=google.com; s=arc-20160816;
        b=tHT9S8s1EGPHmzlnq/JgjIKZZ2flK55xHaj7XIPVFvs0CG6Za2LUo/irTVm862tCYq
         OiJ3l+Ui5NdaZCk1LvSs3kX2KgxLjzw3BSZQZsp0MfwiIe43Mf8+ubyTFUN133xZfXRQ
         +NPekY+HhfBiUskA1LzDbU0MmhbPl8thgRs7slTRrEk4EvPiHsHy/zWY1D/bUCZAfEIT
         DCZSMVml1pdusy+eHe7ZAy4A1WQuXwpSkZj9uKdwTVER1fi66Hoej2lCVQUxjXY5Yxb6
         9m1VHBJnb75UiM9k54T9gdhvWHwX+2wHR/BwFMLhPcXh/OpY9mZuCDg8ldFzc4vMrAbf
         jXYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=t5OPzHKoyhTzRJVatnF6o1Kij3whHd3zaf8PC6txFIE=;
        b=PELx7VUjGjfOzbIa3Xcbs1v9FahYIA4JjlMQgWSQZl12ckc0WyzzMgvw99zIsrs2Vc
         JQGGk3XQVtNRyNfwJ5K8JLtmdMhcUwbBHmqATnWH2eU7aWzKJbqhqe73TaYw6qjWEVgV
         U5zHGAA/P6Oe85x1dPSxl66jnmAYtiME2RcUqatd/A3Kp8kK/mZz07cO6W0qpMQaHWUB
         Rbqy0iBrCGmAbi7XEmjWDCkYq9HDwl1sbQKIymMQLvZDodGorQy+HA3C0afpBPfkNvAW
         Gjsej7md4DpUBG1GcEjkRLz+abBrYBmkHTVH5/wivkCoO2KEMo4luCTCBfBLthVc3B4X
         DV1w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=O4QVslOs;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t5OPzHKoyhTzRJVatnF6o1Kij3whHd3zaf8PC6txFIE=;
        b=LQiLSJh+lsFO8hMu4jL46pDmnPmpifdcF23NZm/SMCYyGqqf7IcPSVX4oIehA+mFgB
         lkZJd8qkIHIBpIf8hmK2uFLSufXOSZ2UzwWwM6CBibyY2V/eGveWG74YPpCTxz+MyCZ2
         95DfuFZA/epyt5LxhvHuzxLzqrkEhpF7I6mR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t5OPzHKoyhTzRJVatnF6o1Kij3whHd3zaf8PC6txFIE=;
        b=TgCARtQdqiUCdbbyVzqF8aTfdjL4pJwJrNTyumyvJ6kM/7GBFirtPCAWjQtJ0ogVy9
         zrN8bUVNCzr7L3HoZOzn2ZELqJvzjnuGfWdIXpTP/jVoyZ7I9C1y4cNXBB8KJqQmsZnF
         pFaay+xsQ6XTGq6HgtDIaNpRJS/mfEH4G1rxDkrnneURN2+nh476/PBKqnaSbNDd1oWR
         BMcAU9SNAJkiFcwVYq+iox0w6WVEC1g/Q238upN05gnf7tUNVp4c8kQs1SM6J4oy5RPZ
         GB+hlCkCMuKqIAY09gosDNynXpIsECb/VBibSfbUiOF/g41HQ74GNW3AKz/RQEFaT5Lz
         Anhg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530m/wU9vqXCE/ofbG84nhOCk7skBbnzwN4whksfmfXlN9Rh3bAf
	oMAmPS3RvAlsUHregehRl18lvA==
X-Google-Smtp-Source: ABdhPJyki7TkEzZc5D3tbwgvNRmpVxzb1GgypTwI7E/sIjEcBJEb7PZf9NPJ8PlN/K0TiKcFSm+jaQ==
X-Received: by 2002:a05:622a:24a:: with SMTP id c10mr14208624qtx.289.1634312818460;
        Fri, 15 Oct 2021 08:46:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5a8e:: with SMTP id c14ls5215187qtc.3.gmail; Fri, 15 Oct
 2021 08:46:58 -0700 (PDT)
X-Received: by 2002:ac8:6112:: with SMTP id a18mr14099844qtm.401.1634312818052;
        Fri, 15 Oct 2021 08:46:58 -0700 (PDT)
Received: by 2002:a05:620a:1457:b0:3fa:dbc4:fe51 with SMTP id af79cd13be357-45fc47e9c7bms85a;
        Fri, 15 Oct 2021 08:14:24 -0700 (PDT)
X-Received: by 2002:a1c:f00a:: with SMTP id a10mr13149012wmb.112.1634310864033;
        Fri, 15 Oct 2021 08:14:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634310864; cv=none;
        d=google.com; s=arc-20160816;
        b=pS/yYbRlaYFkbRmaYl7INXFid9j9RMSwpbjDXPZW5qdkDWQewP9Qe0WoKzgRu46lw4
         d66WMBjUZyYmZPQnLUJzRA7QnhJwYlthlhkYMQQyF/c0OEZnK5I2DqaTedaYa/DRgTXA
         mBk7kcDfTr6IQIEJbO9Df687ACzpfFArI4OPKdm3VTuMQjH/CVae+XpSAPPhPQ6qQ94Z
         i9Rqaz7ki/Q7bJPbVFtJnxzapWWQDMaW+RL36dcMtjNiRyQqhbnE7rq5aggMosI3RU9x
         zMPcxSkcrHmLGkIIrm+9qGDo0DWPleD8D6P7tW8bdWiAd/BH1QaCY5mpDiqbC7PoKgWs
         OWkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:dkim-signature:dkim-signature:from;
        bh=JVzk7Wa/jMbuTbH5+3LVxNUlhbhJgVSboKsnYOECFqE=;
        b=0FytrO5C2PgqZQUf+eka9a28uQC3+v6rMuhiZBR6nMEzSt2KZosd/7ba7QhYb0kJ/z
         UBUbX6lUej9xCqOJXYm9B5gCdkrOUm9xilyA1E3dJrS4lq26nTkm7uDYJrJtWb1zE6uD
         mGoYLLl6I084V0bbO8AcaxKV3il0YxlV6FbnFM4ekvjC+gNLbkMuOydik35Dve1mAroa
         h+IJUoJ8OnGxllxTnmvi2aLxp/2HlafVwIW3KtpYQEN4AHTgHhc8MGSYbdjbl81k6EF+
         idaBDoc8RtqIz83EewouQ91jpvSLydqQdblvHEFeWVmPSKMO/epS8rJYFHQsc09E7e/6
         n91Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=O4QVslOs;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by mx.google.com with ESMTPS id z127si12636213wmc.132.2021.10.15.08.14.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 08:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: linux-block@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Jens Axboe <axboe@kernel.dk>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christoph Hellwig <hch@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] [RFC PATCH 0/3] blk-mq: Allow to complete requests directly
Date: Fri, 15 Oct 2021 17:14:09 +0200
Message-Id: <20211015151412.3229037-1-bigeasy@linutronix.de>
MIME-Version: 1.0
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=O4QVslOs;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=bigeasy@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
Content-Type: text/plain; charset="UTF-8"
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

This is a follow up to
  https://lkml.kernel.org/r/20201102181238.GA17806@infradead.org

where I *think* we agreed to audit driver which complete their blk
request from process context and then let them complete the request
directly instead going through ksoftirqd.

This series converts a part from the MMC layer which completes the
requests from kworker/ preemptible context. It was verified with
sdhci-pci device under normal usage. It also converts the usb-storage
driver which is slightly complicated since it goes through the SCSI
layer.

Sebastian

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211015151412.3229037-1-bigeasy%40linutronix.de.
