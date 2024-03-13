Return-Path: <usb-storage+bncBCYPDHPG5MERBTOCY6XQMGQERGTHUEQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E5387AD0B
	for <lists+usb-storage@lfdr.de>; Wed, 13 Mar 2024 18:24:32 +0100 (CET)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-dc743cc50a6sf1675508276.2
        for <lists+usb-storage@lfdr.de>; Wed, 13 Mar 2024 10:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710350671; cv=pass;
        d=google.com; s=arc-20160816;
        b=lt0J9b86BY1CXfuCsKBECThPnxhXoq61w5QTnZZMJ/nHi4MvXbmMe/ZBZTamHM0N/G
         ryAh8oFnTpKRfGdjf7cH+Q6Mm5c7SdQXK6/3qXpt9SzxF9OST30XHvnX/t0nK3Opbbsm
         gltWtV2Qh/+OovP1RRIuNpBLeVbIkyWagS+g09tLyADbpUMU3q2uNbhBblwROrUuZraV
         7jCm25Z7DR0z7vpo5Z/1XZc2dfAhmsAi6aIS5ShbJeqz9Fwb+FBrdX/GqKh8nYTl85m2
         TwlZi66V1+maDvIDaAhf5yYAWVHFbvW0KY3bkSkHPNvqSRftXZBLIKreMyzFNHsvzPOY
         EPVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=WYE3KjJC4BCu8ell2Uq14u3ncerlYDDnERiFUcfDUHY=;
        fh=J7/+3BR6wIEk1VNvDw25k6EMr9uk84udieMiUyNLXYg=;
        b=yw30zDd8/fPytGXtQQwQ0JdUjiunq+q9Bdd4cF2hzYBOS0jjHIsYV2NeUT7H4Fg0gk
         WhazeTKNRqXlPVFVVnJtLEYBvfKJCamZmrwzyJjJ82ERloygZmQrgGj2mIPOjvfAYZRj
         kHMztkGqTa+BZL/lJDy8/FEd0flhLPCXwJvSndCjmUBWK5xLtHcnIAD065l+hAFH6coG
         ZOd5WD9CIm1pqbtoMwhjbwREsE4MR0/YwKm7/JD57NCDmSxiH97ucBYXStRqTNi4QJlK
         TYDFrQRaukOXy5jsIdAMAWekDelnBsGRQegGKeYXtNbnV8oSbB9okli0V8I1mZPfa4sL
         Ee2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@igalia.com header.s=20170329 header.b=JHTkQMP3;
       spf=pass (google.com: domain of gpiccoli@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=gpiccoli@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1710350671; x=1710955471; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=WYE3KjJC4BCu8ell2Uq14u3ncerlYDDnERiFUcfDUHY=;
        b=brVkQkdWxu2Kd2DP+NGEUZWTm5r6Hh4GddBGOuhcvjUXYdjbropqQ/QKi4rMtcPriC
         0omdUJyAVQ2A3IxR7IX/XfbV/K8Ly8FjExdwIPf28Kem6L8b8p6O72aE35qm9qQpL4Ee
         MeOPfRAAWM45PlOqOWCm6Zde7CmN0s5YRKHY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710350671; x=1710955471;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WYE3KjJC4BCu8ell2Uq14u3ncerlYDDnERiFUcfDUHY=;
        b=mNl/ROfvael3JJ/+NoomAoqCQ2fALSP8/hX/Y6SPqgKs5fy30N91DE1/XDjGYRrvyD
         xZGsEtLmQHo0a46fOzVNStVzJXwFQJF/kv5C0JtHBm5UiyuRApiDNVrfew3ESKO0Zydw
         4Oyjnn5tn1NqUFDEALtJgOoqP/fKSPdL628FDUZDWLrtv+gToTVJkJWIq3zSPE/SxdvB
         ls7AWkBNBZWa1qAIXn1OiSDXF6sYXKYbvkDqtcjbCHGvMOcELPpXkmzIR/enJU/Ib1kw
         0aL42db91DJriJYLgbiRs4zrxAb7q9bwEFJwI+kd1De7TRRWC8Pdxar14ESD6TQpmE3n
         4Kew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXaMWFvylfUzGURv4KbtsmABgLwMbCkOarrDP2niuZa2RkvVzjG9QTTmTeErbYK7yIOATPmMSYVFY1lEQcb9z597oFMuyRt5cEQ
X-Gm-Message-State: AOJu0YxpKztVEW7x1cH8gsWMP3PHN6wMS8hGmrtueJgNG75CmfNBOJhM
	xNOCMsS21cUtuySYzmIOYHoi32Esn4BIPe2YNmZswbrkrX3OK1cedG6r5NUaCPI=
X-Google-Smtp-Source: AGHT+IE8g3cA79JMtZAsX0xOCT3lQJ0PlEz7T/BlejMcSmd8SKL0AK1dDa2dlT13eQtrbP7EwHZMRw==
X-Received: by 2002:a25:d3c1:0:b0:dcf:ad1e:f16b with SMTP id e184-20020a25d3c1000000b00dcfad1ef16bmr3381975ybf.50.1710350670787;
        Wed, 13 Mar 2024 10:24:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:188c:b0:430:9754:2609 with SMTP id
 v12-20020a05622a188c00b0043097542609ls88416qtc.0.-pod-prod-05-us; Wed, 13 Mar
 2024 10:24:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWhEzOvoeyNpJBaqJtROrlI4tlLLHh0lBUNMlHIf3qw4UlgBeWlVTtppjHeM9wmL0182vrcrMJK2tRJ7SMXxslWqwJREnDd6OLkCSPb/OkLrqRCC14=
X-Received: by 2002:ac8:5c07:0:b0:42f:2e1:1276 with SMTP id i7-20020ac85c07000000b0042f02e11276mr981939qti.12.1710350669320;
        Wed, 13 Mar 2024 10:24:29 -0700 (PDT)
Received: by 2002:a05:620a:3181:b0:788:4070:2a9e with SMTP id af79cd13be357-789c80faf2cms85a;
        Wed, 13 Mar 2024 04:30:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU7yxrSQH3LbuwA315iHgAuwi8PxqFtkTBWxz93xAt0qYlJX66LIItlMNrQihKsRCIuHjXyvescYUbg3QqPWrczD6zqIsy9QD5WVSVK9NAjj2cx29U=
X-Received: by 2002:adf:f783:0:b0:33e:2993:7c81 with SMTP id q3-20020adff783000000b0033e29937c81mr1757510wrp.64.1710329434933;
        Wed, 13 Mar 2024 04:30:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710329434; cv=none;
        d=google.com; s=arc-20160816;
        b=irA/tLGgpbjhCuEj8S/vtLWAMdzLe7va7HK9E7sd0MdxUGTutIUmPcsQAsWnqGpWwo
         zZY06Z30BxLFtgLtFhqcfi0/Ov1+0EXOW3m6R3t+U/25rsAq+QN+qiWGMuE7G5rFn0QX
         sl4yZwzS6jsbh2sa4Evk/SNk0sDWmDDeXuT4xjRw/bSrfRKbdyciXzi6yqr+8vV9pid3
         9SVw3LvMA+m0TLYyePvAu9n5i2HPfz8M3vV6sQindbhN2vxjjNheIhigmy3AKS9wW9QT
         U2J/ghPhfTU8HTEvJvz87EguRWy15ZKnIAHhKx85D7todvVKgLB2LWGDSS2DnLgWPtF+
         d6+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kky/dRJyKBUx3h381cnSb+YhqF1W+SBQhMlIYZOCUjM=;
        fh=ROW+63RVPehm4yMki7r6ABKd4I81GVavnTxwU3Ypvlo=;
        b=ePSZYhUqVF73VE46iRJWkCjH/4SzI/RoovelGIa7J6f+8XjvdzNSh2CPxYISjaJJul
         bC7BI7okh2KjdfCqkQyLrvKSojO4xgcJTo+GIA9jN3pA7H6MjZkDBRxAxdTf4h+IlPw0
         yXeCvvQ61WpwtNS5K4vVhDXOHEKp6HYhSIfHWZ1hOA+StDd9FlzpikH1UGiV5GurhWkg
         DHO6SR5VjK/VFvWuUOzD6i2TJNxfLagC31ucTXQxHbHKYZ5bZuWpZxEojcj2H6Ltzq+9
         3ykddRVPazawztsMaADc2SjDiQjDVVxnkpN5Fyn3Xk2rCOd++IDpEAwSCN7+XzXL85CS
         uhnQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@igalia.com header.s=20170329 header.b=JHTkQMP3;
       spf=pass (google.com: domain of gpiccoli@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=gpiccoli@igalia.com
Received: from fanzine2.igalia.com (fanzine2.igalia.com. [213.97.179.56])
        by mx.google.com with ESMTPS id f3-20020a5d58e3000000b0033d76a32d0esi5160343wrd.467.2024.03.13.04.30.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 04:30:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gpiccoli@igalia.com designates 213.97.179.56 as permitted sender) client-ip=213.97.179.56;
Received: from [177.62.247.190] (helo=localhost)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1rkMoN-009vIC-01; Wed, 13 Mar 2024 12:30:19 +0100
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: linux-scsi@vger.kernel.org
Cc: jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	kernel-dev@igalia.com,
	kernel@gpiccoli.net,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	syzbot+c645abf505ed21f931b5@syzkaller.appspotmail.com,
	stable@vger.kernel.org,
	Bart Van Assche <bvanassche@acm.org>,
	John Garry <john.g.garry@oracle.com>,
	Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Subject: [usb-storage] [PATCH] scsi: core: Fix unremoved procfs host directory regression
Date: Wed, 13 Mar 2024 08:21:20 -0300
Message-ID: <20240313113006.2834799-1-gpiccoli@igalia.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Original-Sender: gpiccoli@igalia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@igalia.com header.s=20170329 header.b=JHTkQMP3;       spf=pass
 (google.com: domain of gpiccoli@igalia.com designates 213.97.179.56 as
 permitted sender) smtp.mailfrom=gpiccoli@igalia.com
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

Commit fc663711b944 ("scsi: core: Remove the /proc/scsi/${proc_name} directory
earlier") fixed a bug related to modules loading/unloading, by adding a
call to scsi_proc_hostdir_rm() on scsi_remove_host(). But that led to a
potential duplicate call to the hostdir_rm() routine, since it's also
called from scsi_host_dev_release(). That triggered a regression report,
which was then fixed by commit be03df3d4bfe ("scsi: core: Fix a procfs host
directory removal regression"). The fix just dropped the hostdir_rm() call
from dev_release().

But happens that this proc directory is created on scsi_host_alloc(),
and that function "pairs" with scsi_host_dev_release(), while
scsi_remove_host() pairs with scsi_add_host(). In other words, it seems
the reason for removing the proc directory on dev_release() was meant to
cover cases in which a SCSI host structure was allocated, but the call
to scsi_add_host() didn't happen. And that pattern happens to exist in
some error paths, for example.

Syzkaller causes that by using USB raw gadget device, error'ing on usb-storage
driver, at usb_stor_probe2(). By checking that path, we can see that the
BadDevice label leads to a scsi_host_put() after a SCSI host allocation, but
there's no call to scsi_add_host() in such path. That leads to messages like
this in dmesg (and a leak of the SCSI host proc structure):

usb-storage 4-1:87.51: USB Mass Storage device detected
proc_dir_entry 'scsi/usb-storage' already registered
WARNING: CPU: 1 PID: 3519 at fs/proc/generic.c:377 proc_register+0x347/0x4e0 fs/proc/generic.c:376

The proper fix seems to still call scsi_proc_hostdir_rm() on dev_release(),
but guard that with the state check for SHOST_CREATED; there is even a
comment in scsi_host_dev_release() detailing that: such conditional is
meant for cases where the SCSI host was allocated but there was no calls
to {add,remove}_host(), like the usb-storage case.

This is what we propose here and with that, the error path of usb-storage
does not trigger the warning anymore.

Reported-by: syzbot+c645abf505ed21f931b5@syzkaller.appspotmail.com
Fixes: be03df3d4bfe ("scsi: core: Fix a procfs host directory removal regression")
Cc: stable@vger.kernel.org
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: John Garry <john.g.garry@oracle.com>
Cc: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---


Hi folks, thanks in advance for reviews.

The issue  with usb-storage happens upstream but despite we have a
repro in the aforementioned Syzkaller report, it's only easy to reproduce
the proc_dir_entry warning in a timely manner on stable right now.

The reason for that is commit 036abd614007 ("scsi: core: Introduce a new
list for SCSI proc directory entries") not being present on stable. This
commit (indirectly) bumps the ->present field from unsigned char to uint,
and the bug reproducer shows the warning whenever such field overflows,
hence it's way easier/faster to see this problem in stable, though it's
present in latest v6.8.0 too.

Cheers,

Guilherme


 drivers/scsi/hosts.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index d7f51b84f3c7..445f4a220df3 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -353,12 +353,13 @@ static void scsi_host_dev_release(struct device *dev)
 
 	if (shost->shost_state == SHOST_CREATED) {
 		/*
-		 * Free the shost_dev device name here if scsi_host_alloc()
-		 * and scsi_host_put() have been called but neither
+		 * Free the shost_dev device name and remove the proc host dir
+		 * here if scsi_host_{alloc,put}() have been called but neither
 		 * scsi_host_add() nor scsi_remove_host() has been called.
 		 * This avoids that the memory allocated for the shost_dev
-		 * name is leaked.
+		 * name as well as the proc dir structure are leaked.
 		 */
+		scsi_proc_hostdir_rm(shost->hostt);
 		kfree(dev_name(&shost->shost_dev));
 	}
 
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240313113006.2834799-1-gpiccoli%40igalia.com.
