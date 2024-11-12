Return-Path: <usb-storage+bncBDAOJ6534YNBBEVEZ24QMGQEIDVV5OI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id EACD09C5F25
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:29 +0100 (CET)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-3e7a1f72eadsf2300870b6e.3
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432978; cv=pass;
        d=google.com; s=arc-20240605;
        b=eATP9hR5CbFBNyJFUK4A2PEfm7sQ4zyE44EQAGVH4OXD6cWN6bqDN/dWD2Vkk6vUqU
         f6tKUsKxl7rKKPcBX4hLpB+siMhJtEb6CucetW0H2lkIXueGxBim4UsDivDMu1BvQVi2
         RyxmtCvtNcFHM6S2dutOxEhLP+ngAl+1zi9bu9Nar8USf58WGnRal63lIjeKZzEi0Oxs
         msr0asiW+nUv7kVAtehfscazd79J4l7bvZSN+bF9h6RgeH5nsIkj5iiftwAAeaNwlBa0
         Kweiw/OE/NVuOlZYUSTqpkToRSdBu3su2kk3dLgYOvEDzXTBzVtDgmgIgMeyONZM8Hlf
         eMLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MvOkoJ1DePMiTpaqxsHIxLEgYMbDu1AbFtYWdxSMO18=;
        fh=1plCubopj/pIvAT5FJqwDpQduwHE+nqBkAY14i9Oz+M=;
        b=axO32kWKIXUGhM7tOt0JwZqRkx+h2e7YjSbXs4fuV2j8siysS/hVlR946M5JFDRwBw
         AFsBb4RSow/k8WrgphwN3NklttoMke+mWsYyHV96bSOg7Yud9E3zTqEKuC4kx9BR7bAW
         Qc7Q7vTuQb6FNuQZv1hn6vZ+HjXh6DZgzAjzXSI3BX+Y+78cM97iqK8bC+DPN8tKIvGA
         ryiTo+nqY2lbn/lp3Kbs2vfV1wAPsOL7e6lNsQTInrTXGZJ9xtKtSTvUOn6YN1trpP9i
         c1M/CzE8CvMvQIwTYrSx3a4M/xBKAYd8M5pMKK3B4ysFumuzdIx9PsIsaKTYjoKpSlOB
         fHdw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=YI5UzLOs;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731432978; x=1732037778; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MvOkoJ1DePMiTpaqxsHIxLEgYMbDu1AbFtYWdxSMO18=;
        b=AoJrJGYmVBBPUAzvGN/AuqnrGDanP6oGP3pbsv4NJkt9hLIPczqs0kKoYj4fw7Cj0X
         bl9AOUi8V+OwR5AvAhvNz4zlyme0yML61U/MMQAFO7F5kqv182NwDkIZzCdRLNfuNOZv
         wWcw74092CjbEs6+CbDnFeMJrWcMQ6zT+wk8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432978; x=1732037778;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MvOkoJ1DePMiTpaqxsHIxLEgYMbDu1AbFtYWdxSMO18=;
        b=FqddXjtVCuFhl2IU/HDVC/MqN+Dy4Y9whXpmme02VvIOfaMjaqguSDeMnlegd89DiN
         o4glAb0ABmnVmh0icKXy8XJzfIVjAF3fCT3FU3o8jZLqmFqQe/0CINu7csOHWnFaieyi
         Q3wgGNsKC/LyHVy4BdhVVCp7E7XiglUHer87d7jO5YCCoR/0qSOzavTg9/KJnlm82kGu
         4x0lG/WBA5Jq4Mi5MkMwS77ESnAWfol/pCZAXORW23PXOeCbZ1xElxoixNwqJL23rhXf
         JnBX8/ijJM6u9msOKqT/ZZL1vwYB9XoL9IOZBLmyZp3U3xlj93yHVaSXfP0nX5qao/7M
         sN6g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX5b1Chp4cuAc0yvj+RxiN94ZqG2orIZCaZY0O4J0yVsWgrLDPnKEkVKuSHRuH7LhtiBCfJuA==@lfdr.de
X-Gm-Message-State: AOJu0Yy2pOMCezQAyJrmLBaKnLGpsTcxMd/XfS7+Ybxz4ciEA3A6URPw
	+z6fsYREftHmV3f3B0q+i4mmbC3j+jReMPCvTiEIlBETWAne0xb3C4TqvMlcDoc=
X-Google-Smtp-Source: AGHT+IGxYolml0IfT4xD7J7QoOD8KN8vlScAXsOM2AQHt0H8hnOC0GXIZUhkWP1gdRvqSN1FN7RTtQ==
X-Received: by 2002:a05:6808:1591:b0:3e5:cf3b:4fc5 with SMTP id 5614622812f47-3e794669a12mr15311860b6e.15.1731432978508;
        Tue, 12 Nov 2024 09:36:18 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:d02:b0:6cb:fae8:5fdc with SMTP id
 6a1803df08f44-6d39353e1e7ls20626176d6.1.-pod-prod-03-us; Tue, 12 Nov 2024
 09:36:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV7e/HTD4f0jn7NvekmmZ2AVqPq8vhvAMOkHrGEMuI8JUOWgWfmYt1JbVyEY1KRYM5SckCxRoRRzZSFvQ==@lists.one-eyed-alien.net
X-Received: by 2002:a0c:fe4c:0:b0:6d3:a7b2:aff6 with SMTP id 6a1803df08f44-6d3a7b2b0admr165698636d6.11.1731432977917;
        Tue, 12 Nov 2024 09:36:17 -0800 (PST)
Received: by 2002:a05:620a:4ce:b0:7a1:c409:aa2c with SMTP id af79cd13be357-7b34c3c38a6ms85a;
        Tue, 12 Nov 2024 07:58:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXWs+/J+ir8SXM990qZfoWx3rFcL2vhddNeeEURbZ1+CHr0FxhLih6aXEB0lvMdYh4s0tfumygz3KPtcQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:1c16:b0:431:4a83:2d80 with SMTP id 5b1f17b1804b1-432b749bc9bmr155315315e9.0.1731427117372;
        Tue, 12 Nov 2024 07:58:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427117; cv=none;
        d=google.com; s=arc-20240605;
        b=Hc1QNMLJcNRuhriZkbCxxA5g+PHvDWzMmXlUTsFRmTYeB7tsfRIcssopGgTictn/OC
         lMVqSkZC3UWUR6E60Qh1ZwFFa6BuH4x4uRkJeuQHsKE7ElIG47nV5Zzxh5i1tkiLWutz
         BY1RUm2PM+X99xzUQf76AQJDB+McT3PK+Rfi6cMeLDgR8nT2jq5GBSv8zpTH1SrFEujr
         psqVlnvJtpAVXGgQT6KVAj8qK/iRs2Ea4RP5mz9rRwr/OqaibJeCe5Himh5iU8WYHmuU
         SmFRtHw/k68L8sgOLGQx/x7o+XWOSMo4F6/0scHAI5QJz4dKnSZrIx5kHVJtZawRDftn
         rDmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YdY3Vsmu+IF4zfDZEiWUDqDaXm10hp+1m/IbDQWsUjk=;
        fh=m6BaSEzhfP6IECtkClLvav3MPm9r5SDm9MVLyb/7d58=;
        b=EiO3vKlMLWkA0yeKUVvJxYqxKmt/sHWB04WLfP3B/lokFnHR8U5CaA8+gJdWaz25+s
         +yXFjClP4Sykmnsk4fsBGUfpVqYh3rjE8wnVV5rSOvrgfwSUxTHIDpjONsLQYUyI28Aa
         O07NL+Gf8kh+YaCMhsMC31jPX4xbHtMWizsalTSmBm/iyyRn1bp4x9UpysudPC0rfrTQ
         QYX4f7ave5+XaNRiD3AFbWUXptB+HXR2cEIvg9Z9/KY6uvDHFaCyZeKZjx2rPVRKPAJE
         Az7A/fuoNHaeh0g5/T1aQtu3+IEbpcDvkp4qnJmX7uDRfP914YjPH4yLJ6w8UsInucWX
         Eihg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=YI5UzLOs;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-432b0bda4bfsor46893805e9.10.2024.11.12.07.58.37
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:37 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXwZCraJoExICtOZoKcURAFLdVUd89Xey893TPO5+oO0RuebRMcCEuUa0aQHTaIH3FBQsdlHNaxRMPoLg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:4009:b0:382:424:94ff with SMTP id ffacd0b85a97d-38204249572mr4094085f8f.18.1731427116898;
        Tue, 12 Nov 2024 07:58:36 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:36 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: gregkh@linuxfoundation.org,
	andreyknvl@gmail.com,
	b-liu@ti.com,
	johan@kernel.org,
	oneukum@suse.com,
	stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	snovitoll@gmail.com,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2 4/8] drivers/usb/misc: refactor min with min_t
Date: Tue, 12 Nov 2024 20:58:13 +0500
Message-Id: <20241112155817.3512577-5-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=YI5UzLOs;       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Ensure type safety by using min_t() instead of min().

Also add the explicit `unsigned int` as scripts/checkpatch.pl warns about:

	WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 drivers/usb/misc/usbtest.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/misc/usbtest.c b/drivers/usb/misc/usbtest.c
index caf65f8294db..8d379ae835bc 100644
--- a/drivers/usb/misc/usbtest.c
+++ b/drivers/usb/misc/usbtest.c
@@ -2021,7 +2021,8 @@ static struct urb *iso_alloc_urb(
 
 	for (i = 0; i < packets; i++) {
 		/* here, only the last packet will be short */
-		urb->iso_frame_desc[i].length = min((unsigned) bytes, maxp);
+		urb->iso_frame_desc[i].length = min_t(unsigned int,
+							bytes, maxp);
 		bytes -= urb->iso_frame_desc[i].length;
 
 		urb->iso_frame_desc[i].offset = maxp * i;
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-5-snovitoll%40gmail.com.
