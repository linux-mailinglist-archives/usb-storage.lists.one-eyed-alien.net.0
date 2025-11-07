Return-Path: <usb-storage+bncBCBZDM6RSIMRBUGHXHEAMGQEZ5XWGCQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id D9605C41C73
	for <lists+usb-storage@lfdr.de>; Fri, 07 Nov 2025 22:25:38 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-656ceb0c967sf489725eaf.1
        for <lists+usb-storage@lfdr.de>; Fri, 07 Nov 2025 13:25:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762550737; cv=pass;
        d=google.com; s=arc-20240605;
        b=YOaA27K1ny6LHbGVzsp3O8GUc3GzKqYSK2IEgPz4QNzsj9RyL3lodn1Jr1qi7I8Pkq
         4zJ3ShrzlKBPYIe34Cbos4qG9eEEEcwyu0Bk2PZ8EoU2Ep6eHlpLrGghZHeIpIly3xNw
         irMb85scQuQfmb9uuywZ6eDABxtt8pJxZaGY3uA8SGWfa7cBpx+aFDPL0+qaffh/iRDU
         0PULlKuTPFzGg6Ud4lgRvV/PYM+bLk4NuPZf/rQWSHQkRhmsryoiU2PVYUkMKfR0++7q
         G7RUmGHwEpvekSWbv0HLprjY5zPuJ13PsAr/sWU4LVpsrtEudo+IAD0/8vm+ujZ98HjI
         /CGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=WSLcsfD/ogeerO9mAer5vPH7W3ctj7VrHO+oalz1oKw=;
        fh=DUnPegFSumG+rzZVSakDUWhJOpjUwKEfj+Q23s258sA=;
        b=LmNMpxVJNPuf4sFl4A5X0HrZ8giJ1+jeEZad5p+7stLK6Du7bB2bfGdgtTbpb6FJdr
         Ly8I0zWg3o37eWiQd4ZWSlW7TvwENJYoRZPRNJVb9Hc+lvV/IAa17V6lc4amWNWQDJmh
         CG+Sdl94Tu3AQ3BXdErya7ZecFxinyv+nZ+RBzL9IQCVy3aqMbKkpGCLHLFwtyzK+vOY
         7vPVywxGhfH2nLHpog0kmOgnc/Zzm4JKY9q23X8PabLRGkrQ0TZFkIZfr1UPPce/E13I
         VxOiOdKCQhvOIlC6y07Kzdou9suH/UzQQaEEtLpngFcWf15JIbJ9NHQfQYNXr+lkG56U
         r1vg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=Gj8dFZbz;
       spf=pass (google.com: domain of marco.crivellari@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=marco.crivellari@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762550737; x=1763155537; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WSLcsfD/ogeerO9mAer5vPH7W3ctj7VrHO+oalz1oKw=;
        b=c49PlT4f69zet/tCtUtVrMUMDUoso3h7UodJGbIbP5H/dK91KgYM5zwuu0FgaECejj
         FdmTcDdzSvck2mcuDm8yIIUogk9/20KrKrvdWD/BOc1kYRDaCYTN8TTL8pjmRpMV42Kg
         QC8RHkNCDgEQBBf411rHk4qn9kKV0vRcDER0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762550737; x=1763155537;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WSLcsfD/ogeerO9mAer5vPH7W3ctj7VrHO+oalz1oKw=;
        b=MAEbZ71HO9LsufgpUd0Ncz8Ip/ohgN1eP/VbyIyjOD9sMZf873DYCS8+Pgcq8Ygj0+
         GDnTPXNuvtTvS8BsRR9ADkzD9LwSNbZ5kkCPIPq6dueUVm5dt3hJrjyCKPPQx3XBZeT3
         rrdaYrDJbBSARVfrB5so8YDJNQ7McpGlmlX1RTRhLIFiKnMKkBq6ZozxgJTowmovdP5R
         9121YdvZJ+z7j7EYZP8ny5KUsm/co1bUPYvKyjzRoKQuwc4imhVKnky3VIJtosQ/8plh
         1+045O0qLrTT4nnVSIC+B+5OOg1WklFLD12jV1gWKOks4Tx26ZgHg3yVw+bFPHGDQZhZ
         1x1w==
X-Forwarded-Encrypted: i=2; AJvYcCWB9NMKDVC6WH0ah1Cc6ePEBxqQZ+n7slEOjRTADHqKmZ5rw3ESP28r5C5NcImFkzFwdWmT7w==@lfdr.de
X-Gm-Message-State: AOJu0Yy28MnWe8pOqwrlOtKJCUZ8ls+qr9lke6L6+SYm/qdhHJtd7Q2g
	kFH1hjbKE7Brdb/lcUqYGEzBmeu4Uv/6l+V39zjLPjYrIs+OVh7KXcJijuOicbHXvIs=
X-Google-Smtp-Source: AGHT+IE43Ovb2rwUDNDnMt7noVorM1R4auRDMs0pnT5M21XXcxkMB7+EuG76OO8CIXEZnz0dVrPS+g==
X-Received: by 2002:a05:6820:4d51:10b0:653:6c32:6fe9 with SMTP id 006d021491bc7-656d8e24a61mr513873eaf.2.1762550737418;
        Fri, 07 Nov 2025 13:25:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+Z8+GcDhBSQwIQ74tYfU2c1W4J3SKE0Mjzx/s25xdLDuA=="
Received: by 2002:a4a:db69:0:b0:656:d1ea:96fc with SMTP id 006d021491bc7-656d1ea9ae8ls275153eaf.2.-pod-prod-06-us;
 Fri, 07 Nov 2025 13:25:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVmdKPf2McDnKIilI8FyC9scBDcN7rJ1hU3gxk27VofJLtcr/LeYjVh68kN3h1J7vyBwa0d0GiK/I9e0w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:6f8c:b0:44f:e3d2:59db with SMTP id 5614622812f47-4502a24a4e6mr539926b6e.16.1762550736353;
        Fri, 07 Nov 2025 13:25:36 -0800 (PST)
Received: by 2002:a05:600c:5881:b0:471:cf5:89b with SMTP id 5b1f17b1804b1-4775d0034f2ms5e9;
        Fri, 7 Nov 2025 07:42:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWpEt71RJvuIS5hCHagp/LuzQj4ZM0j7NxQp4giSH9dbQ/qbatducrunbojK1l7rMRxxVHgnWdeUHW2zw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:2882:b0:427:a37:ea3e with SMTP id ffacd0b85a97d-42ae5ae858bmr3305400f8f.52.1762530166401;
        Fri, 07 Nov 2025 07:42:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762530166; cv=none;
        d=google.com; s=arc-20240605;
        b=dXtUYoI51JmwCRORcKonFrCF9t7IiIjnK0cIPR9tg5t7njwfaNuqhVmsL3LCED7CDV
         GfwAD5QQ9HX8TyctEssuPVUUcczEUw5bpZ+M+cvJdXv3hEAZQfxbpnfEcfUXC10U91an
         KjYRgpdkQ8tkbTaVmO99skwWTHvkD/csmjTValZDWU90BMaL3+/m+MPVOP2l50VhEVQl
         AVWiXEOz5hj3QqYoowKM7bxs6XDB1mweODgqwKZ6y2bck255jbgmLXQkEzck7FZldNGk
         5AIqZFU5ZxG05ROj1Wp85wEN0BEjm0s4UuVCzDupRSrG6ArBNRKoYYNdY/8/Km4o5vEL
         OovQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=EEllDksTQmdd3u8PyFwFKXQ1ssazmQ/lfWRUKOA18nI=;
        fh=W9A11W+xr1gfvKb10nvw5/dGxP9idbmhu0a++7ioRZw=;
        b=HqF3SBRCZhNKghWpk+DUvGloqaagS+ZdX2t+WcsEWEZC97wZD/pH/Vf5x7z+sGkQ9M
         X+t0WHcxdobePAzH8uoL2TP7E+V60dVVfzs4bTzl7XcPL08kexJ4M0VP+5uuXkid1wbF
         7NgbW0ofvVLpCTsued+YngL8K4jQodYg5SIZM3LTvspdNi3EkfZC378/ezGbM6h9a4ZS
         0kP1aMehyOW5q7Rw88tABavQWvYPrE7JPbX8Ju7cfUvgk7zIB7ZIc8bVk0kMT0yYyRWh
         nJ5zkMNUAv1PUknWgvQ6GP3a6/M/3TFIS/Z4dAS1mU534hkp0Bzd0eUipIBZOOMq3Azc
         s02w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=Gj8dFZbz;
       spf=pass (google.com: domain of marco.crivellari@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=marco.crivellari@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-42ac6769ec8sor481979f8f.9.2025.11.07.07.42.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 07 Nov 2025 07:42:46 -0800 (PST)
Received-SPF: pass (google.com: domain of marco.crivellari@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVB3GYEmjIo2dGR62UNDt6Nm+A05165aOol4xTL4aku7VdBGmHYFh/jjui9PAqVsE/dsMuNx7oL5xq8Lg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuQzrlsczm3X8Wgk014OnLmWenUo6N3FW0Kd1uyFEYWDA8UtTIOGDao23o92GN
	//CSEGHVL6y0Xz2ZONaL3u0DMLKZhhQhjLtI7qDWZyUzj8XGLTBuQN+eRxAX4/SosTdBXUL60Ls
	TcGldQyiYWDiW+jzi6sPII8Y0kNpS4CtMsMTgKXsRRQvUIXXxUWvTLVugp5jmRNa/6pQhaVNlA5
	3ndvAaTSF42drzxlu6T70Rg8CSIrpcw9mbOo5jqb1IgseLa/Kqptw0PtAXJX+j8W67NlyN5wLsB
	iBumBQIbaGSpVY+xrCOCn8WxSUlURoigPDNm5CgChZJyUak/zRTvFZw5V0O9u8+EcLdjpcc2GrS
	QFoN/X7J+bJq0n/tVMRYP06dOiSGr9R/ydTryTpZ7+bJiyd1zgsJ+Ks01xXlm3lBvsezSVUVhgV
	zUhKxkUvDBF5e53AccY3emoospNaUIRAUPNBY=
X-Received: by 2002:a05:6000:1867:b0:429:d19f:d922 with SMTP id ffacd0b85a97d-42adc6895b6mr3593700f8f.11.1762530165930;
        Fri, 07 Nov 2025 07:42:45 -0800 (PST)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac67921c3sm6213783f8f.40.2025.11.07.07.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 07:42:45 -0800 (PST)
From: "'Marco Crivellari' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Tejun Heo <tj@kernel.org>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Frederic Weisbecker <frederic@kernel.org>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Marco Crivellari <marco.crivellari@suse.com>,
	Michal Hocko <mhocko@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Oliver Neukum <oneukum@suse.com>,
	Alan Stern <stern@rowland.harvard.edu>
Subject: [usb-storage] [PATCH] usb: uas: add WQ_PERCPU to alloc_workqueue users
Date: Fri,  7 Nov 2025 16:42:36 +0100
Message-ID: <20251107154236.306620-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: marco.crivellari@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=Gj8dFZbz;       spf=pass
 (google.com: domain of marco.crivellari@suse.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=marco.crivellari@suse.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
X-Original-From: Marco Crivellari <marco.crivellari@suse.com>
Reply-To: Marco Crivellari <marco.crivellari@suse.com>
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

Currently if a user enqueues a work item using schedule_delayed_work() the
used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
schedule_work() that is using system_wq and queue_work(), that makes use
again of WORK_CPU_UNBOUND.
This lack of consistency cannot be addressed without refactoring the API.

alloc_workqueue() treats all queues as per-CPU by default, while unbound
workqueues must opt-in via WQ_UNBOUND.

This default is suboptimal: most workloads benefit from unbound queues,
allowing the scheduler to place worker threads where they=E2=80=99re needed=
 and
reducing noise when CPUs are isolated.

This continues the effort to refactor workqueue APIs, which began with
the introduction of new workqueues and a new alloc_workqueue flag in:

commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")
commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")

This change adds a new WQ_PERCPU flag to explicitly request
alloc_workqueue() to be per-cpu when WQ_UNBOUND has not been specified.

With the introduction of the WQ_PERCPU flag (equivalent to !WQ_UNBOUND),
any alloc_workqueue() caller that doesn=E2=80=99t explicitly specify WQ_UNB=
OUND
must now use WQ_PERCPU.

Once migration is complete, WQ_UNBOUND can be removed and unbound will
become the implicit default.

Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/usb/storage/uas.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 4ed0dc19afe0..0657f5f7a51f 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -1265,7 +1265,7 @@ static int __init uas_init(void)
 {
 	int rv;
=20
-	workqueue =3D alloc_workqueue("uas", WQ_MEM_RECLAIM, 0);
+	workqueue =3D alloc_workqueue("uas", WQ_MEM_RECLAIM | WQ_PERCPU, 0);
 	if (!workqueue)
 		return -ENOMEM;
=20
--=20
2.51.1

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20251107154236.306620-1-marco.crivellari%40suse=
.com.
