Return-Path: <usb-storage+bncBCC2JRVCV4NRBEOL6HCAMGQERZD7IYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 7036CB246CB
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 12:14:42 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-618491cc7c2sf1907560a12.2
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 03:14:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755080082; cv=pass;
        d=google.com; s=arc-20240605;
        b=BcN5ddMSh8EcCavcg4QC14hyU9PtrC8KzrHHvfCfSen2PokRkSLmC+A0kZfmorJHD3
         OCSIRSoaEyT1w2duPEowX3fae/Nrb9/Fk4CKCHjJSOcwCG/7dMcLx5Ieff8Iv17REDTF
         Y6UfrR/sGOxc14qLC+VAOrtIeaub3S3jumqVbBFP4jtV1dUnPMH3k3EJz5VuAffydtV0
         ZceoZ7zYTGWdBk3Map06BrHCJTUjmsQSstfaw+nza9MFbtLLR56TlIToc6lBd5neVX5V
         NvNzRG+Dho4nUQCJskY2+9NrLR6eGDolsspxV8fmkECwLXCiptlu471hoD+cOlcs8jZv
         1y3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qLb4wkpq7lscmWIwynVp4SkB2jgQXxo+LWaWRYb1iXw=;
        fh=cIFlV4djgRe+a3YoV71CuWT59KrmD/xECGErpdl66fE=;
        b=Z6cZJkeJemXu+iY1LqMf/Z2x0JJjDNNy/hsi1whFVaDEqsjMiP437Gh6fjZ6mHpw4h
         KBJ1SK6p5agzvXAHLZCunu4arM3XNiFAjbN8cGVms9vNTI60dCpPSAtBbqewA2jo68IA
         PGHS9Rb2nOOz7VQk9aC9OKC2OuZvcA5HuDCuTp6mSS3Vqs8ylimWXQWfQaWQFoePDcV/
         1LQYzsw+i3VPkNrHjCcP4AZFBPonoP+fsPWDMkEK2sOct2jt6Ocm+zd4fBvA+aLVxJ5b
         nwc2uSQGzgUU1PFKSIjj0/16QTGmFWoYb9nuTRxa2W2rNDfRl+XdlLk5slipWxOdZyZ9
         wkOw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=kpNOJvi9;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:203:375::b3 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755080082; x=1755684882; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qLb4wkpq7lscmWIwynVp4SkB2jgQXxo+LWaWRYb1iXw=;
        b=gW0gArdF35d3J9lEXkzIq14QaHDG/Dh3yekQDNztvZa59zJb7Cc4JrcdmemlCGi+Wu
         zeOroeP4yaqc1E9yLeGkYIns2KTgz7Tfd0BpJ6L7KgdJ7ZwupZJW1TItjakumPDr5But
         HSB0YkyvVbiSGIoPcvPI0PrbOHdeVqfBLYC9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755080082; x=1755684882;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qLb4wkpq7lscmWIwynVp4SkB2jgQXxo+LWaWRYb1iXw=;
        b=CnbZ+8Qk2FrvQbVI+EP5zNjjN/HNsJ2T4YrM/KkRqUUyN7o5j0HOAPWfAx1QYYR9OK
         6AVaWFXYoNraZ9yQ/UrmhG5WCMdbCPt4ggnba8dbbLbS2vfVqjinvFvvxU8lj7EHdDpx
         dMaru/ma+2yP6jOv/jGUnEXfYMiFwos4Mz39KsGDXmFr0pXrsvtmIX+vd4VKyvyvHhXh
         0qPZJPP6zoMkRuZPt/RsKF5v4lXnfvYfP4qouqFjRztN7UADC6uehdfSGX2P5JlSoIN1
         BXT0t/8D3oXaaDyxtuMpsuWoqPHqxPG4lOosl+VK57NzzxypTpgIC4g9W3Aa+9dSFlzb
         CsOQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXDFISkir6QefIoAp5+R/va1PSkl0NlmgqoIsTd3zE/JHeKn7W8nz32RzSvr7mfLvM3pEAOkQ==@lfdr.de
X-Gm-Message-State: AOJu0YzBfUEqEHMIevblnMXHbeXnjLOyDvygx3Wosu6qc7gDPoZZMIxk
	8JLk7h0BcgkLcd8jE+6PwfsOdl8ro+NL/HsbwuYukDq/cNdYPaWGfxJDfXWPg9cGgGc=
X-Google-Smtp-Source: AGHT+IF4bG0nPsTuplTa6SBTF+jPVzPJcmeKPNRtTRyE0g+j6reycYpifrvlUrjsNAztFteQ5gFSsA==
X-Received: by 2002:a05:6402:31ad:b0:617:ddc1:ddf4 with SMTP id 4fb4d7f45d1cf-6186b787fb7mr1554263a12.14.1755080081927;
        Wed, 13 Aug 2025 03:14:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZd9I/otx5ky++eTHW5rgLbGemg0Yqa/9V5GF8eVIl2n+A==
Received: by 2002:a05:6402:d09:b0:615:9353:4c7e with SMTP id
 4fb4d7f45d1cf-617b4c8e63dls5402689a12.0.-pod-prod-09-eu; Wed, 13 Aug 2025
 03:14:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVxC+Lhm7ks+nSEhAS4/6Tq6QMqb4qRL5OYh7kh2luP3pjKBl8lv+PYHswTv9G3WAafX057QryUws3voA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:97c5:b0:ae0:ab3f:36b5 with SMTP id a640c23a62f3a-afca4ccbe32mr276289466b.4.1755080079368;
        Wed, 13 Aug 2025 03:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755080079; cv=none;
        d=google.com; s=arc-20240605;
        b=Tom467eCuJTh6eTpYNnxiq4HQroWrnf9tdO2YqyQ8ZPiecRK2j4suFBZXpn6bEwI8f
         ompP4NPtICqQQLR7jPhu0rig8zgMZLPv6m32lpj9nFnZ2ADGV7hep5l7Esh6OzUbcZuf
         PwTFY7YhjSiRvMFmjbQ8CmIjlSjB+deVLE1kCUfoSSL5EHgxsW6ZFD2/9yMrjVIJ5AkR
         ZXi5ByiOvw03GT+w45vsO3zjNLbUe3z/An2KNOmgQW2zjOxCTXz5zm+6tLpMzsZwK5ET
         HCXwlru6/HknBc8ShytWxHl0PEHveOSogiUvjkx7uCl3tx/pUH1uRTVnZU7ClSoboZ5k
         Rq8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Pv4CHsTtOFzXF65KnF8iE3uf5kBWd2tkurIQwheweOg=;
        fh=rIaca+Zny17mb2BnPMqCfCTP8JxFrir6zBVNB/Inuk0=;
        b=AVnnh5m4R4fJJe2SH2qvnZHvVrwWRp3lVeuT2elGfsN8aZaAUOmJ0K05m+wzbex2BW
         dd2zcMrqODC65a6tRDEBJylbT33AYaR8mQGALP/ArSv6K1fZAL2wOIOYg0YghKFLoZKB
         vgB+gMZHj16I1XN1+M5fdMrlR4cVuTkJNLWM81DnUJcrzh4Qmt9Z6KrPmzzpUIFRfbe6
         CStu0nx59k3NEKlSmsl8sdMIsRnzLSZKvTY7QiHDoH2Yfj8EoHhfY5kelcjeUOg8bhdm
         Zfx+YFznXhuLbDTfUMEDzjMk2sZDKuBHQufbg4ZeTgiPiUTObLBKs3VmyRSSQE0Bvqns
         SQ4w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=kpNOJvi9;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:203:375::b3 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com. [2001:41d0:203:375::b3])
        by mx.google.com with ESMTPS id a640c23a62f3a-af91a293e0asi2066252366b.956.2025.08.13.03.14.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 03:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:203:375::b3 as permitted sender) client-ip=2001:41d0:203:375::b3;
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	wwang <wei_wang@realsil.com.cn>
Cc: Thorsten Blum <thorsten.blum@linux.dev>,
	stable@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@suse.de>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 3/3] usb: storage: realtek_cr: Use correct byte
 order for bcs->Residue
Date: Wed, 13 Aug 2025 12:12:51 +0200
Message-ID: <20250813101249.158270-6-thorsten.blum@linux.dev>
In-Reply-To: <20250813101249.158270-2-thorsten.blum@linux.dev>
References: <20250813101249.158270-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=kpNOJvi9;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:203:375::b3
 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

Since 'bcs->Residue' has the data type '__le32', we must convert it to
the correct byte order of the CPU using this driver when assigning it to
the local variable 'residue'.

Cc: stable@vger.kernel.org
Fixes: 50a6cb932d5c ("USB: usb_storage: add ums-realtek driver")
Suggested-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
 drivers/usb/storage/realtek_cr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 8a4d7c0f2662..758258a569a6 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -253,7 +253,7 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 
-	residue = bcs->Residue;
+	residue = le32_to_cpu(bcs->Residue);
 	if (bcs->Tag != us->tag)
 		return USB_STOR_TRANSPORT_ERROR;
 
-- 
2.50.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250813101249.158270-6-thorsten.blum%40linux.dev.
