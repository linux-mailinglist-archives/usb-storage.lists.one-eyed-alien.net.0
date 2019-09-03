Return-Path: <usb-storage+bncBCTPRFE7TUKRBBH4XDVQKGQESFLJYNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCE8A666A
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 12:18:44 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id a7sf10227417edm.23
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 03:18:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567505924; cv=pass;
        d=google.com; s=arc-20160816;
        b=OgfFoh2Lc9hE4VA6QgY36O2wzJgabJ4tsoA3bu9aPNJfgM9B173i0kcx+3HthnfE9X
         kdQHjGdxAcCqG+v0jBEA8mQjGX93nQGaHtCYlbPbSZ70+X1Sz0hijA2aQ4aNmPexWyrb
         7cUD4PhCtEZl+W7gN3sAgarudgpgli1g7j2fmurfMUimGgS0+DTX4AKQFHR6E+EfHwm9
         5PsdYa5Xj5NoSJ05uxqKVo6p0WWBT+XvWv0Cs6GA2B8Lr5vxQ+PAaWT1HKE03ASx6Lc7
         STEuPff5Ki9zm6QNOOLH9t0XQrMr1am4i5hQ5/tpDeJmjRSSjrv8PZaALaMCjP3HMF01
         6nNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=IQ3kWgVjUXUOHU22Dw2VC9ku0FQwlZmDJh1lRT+RaCA=;
        b=Qs7sEax7TUQedTm4PABgXcW04GUVsCpYkngSf9bNJwgaSRabPCa+YoiWN8SNOh3jCb
         Zs+fsU+vxxC0OcPY2Gp/yhOGwu8JW32DKLxDj0yCTNnOq5+vYlgvahSbGyLOlGr3rLjm
         H93R7JmGFLnsGZ0VTshmF/LHzjn7+QZZYNVMUhaXsUaa8l6nj4cBAe3+eTg4XbFNRCUU
         VPY1PwtYgYnsEDuNom45pUjwJf4yC8JvSFLpo1CVRrIGLGH8nNqXRR/IWRrW5ZWsTXUT
         paz/QcAK+v/wfFwGTQb40e8bdMsbi332ZCM2bg5BlVRklav8mmZS0034awZNBpTeSc7d
         r1FQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IQ3kWgVjUXUOHU22Dw2VC9ku0FQwlZmDJh1lRT+RaCA=;
        b=Crng8aPAiqoZf0erN/2Uzs9Si0/tVK0mMTAR5fh5R0+88kK5a1n2BSaU56ziEERyqr
         VJMMzmtFJ/hGHZZEW0t/97ib3fVZyEElFYrF+mLY4SP+OvQRP3C2HosEYTapAx6Hb1W4
         wQf8ZlXMbHi40wiuQ8jwo8UEj56G1LvNFY6sY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IQ3kWgVjUXUOHU22Dw2VC9ku0FQwlZmDJh1lRT+RaCA=;
        b=AhZ7sGGgYdaKcLKOUkkvJzJOpDKQluHFoJlUVUyeVyirvYCo8jukLjnbbMlKwNkwdK
         eqL1BFPkSRB5BYkdzTCOb6gmwLB5D80rVDnwApLl4FCdXUP1gFQRxpdf8UnKLB8hmha2
         vc/8cL39hZoitavALF2DvreSxpQFNJuk8a877g2mGgK/eET5zA+SSw+HPTKpehB7CzRv
         zRvRQ9DIVbMQp9SMKynHA+e8NsVY+hvdzCoLbLbS+4EaLQY1FkPosZ98P0A1igoI/wpb
         E640Q+cOrz5mACQk6xknzIfieTWKQ2wBkNfTmyL9i2roy0sMN3AQVCO3ifKtqjXmJZsD
         S6Mg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAViOtJ8iAPF7mfo/WA2heFSGUv2/vuLRHMuND325qOuDnvfMDGn
	w2xOHA+ckKxo3aXqDuznETdO3A==
X-Google-Smtp-Source: APXvYqxfvBPDl1YTpIbR5buvFrvGmYYeWM+xJmxXUB10BePApdMei1mNkpkJn+Sj2UJOGAtXIMJLqg==
X-Received: by 2002:a17:906:2596:: with SMTP id m22mr28799714ejb.253.1567505924337;
        Tue, 03 Sep 2019 03:18:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:907:367:: with SMTP id rs7ls999381ejb.2.gmail; Tue, 03
 Sep 2019 03:18:43 -0700 (PDT)
X-Received: by 2002:a17:906:1c46:: with SMTP id l6mr14110123ejg.304.1567505923802;
        Tue, 03 Sep 2019 03:18:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567505923; cv=none;
        d=google.com; s=arc-20160816;
        b=05NLDhgwHp20WSCZRwOWlOaqENO9hqnmLyJvdTAFhYvo2TQsNgnBiP4k3UWzusBVIl
         fjupgx+tW5WXX2KWo5i1GQCxP/3Q+d+O6UuDOEkyLnyVhNH3XJyJ1Xp5QhlbJOibaWVi
         vBJuLNmmCR467XZQdYHoeoEVrhO0tbVBEySV9RuN85J+fy5KVxFF1+uCKQEj1OfbVhW8
         L79beKXx7uDcf0LAxa/zPcpc1emFgfy6SfRMaBmr77eLFLOzZdQ/MPHbpvxkjIZ36SIZ
         at3EUyC07ImGNpKMRI9jqBrG7b5lBbFCeauC+aCof1o2TpURZfLUGOAUEXglletYcE8P
         HqSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=gZBo1ZrmfRwgODYEQVDozCrbbSbezTl7hJ3/sS/zF6U=;
        b=u7K8u0q5YMDKF/L6e3XMCmaUMaoLRl2r5NRew4oKLrjOx7LT3SBFalW/dmochf1w3m
         8dfb4Ia6v3qgkQHtwP/VOFZXpqOx2Ssiw81mBXWsVCIdDY252oEklip0BlQDvZJRz+kn
         8Q19ATeZrcPkD1Kf7MU9s6LuapRwxFhucCFfjsT3/DK0RB5eXQKAf/kV8UEm4ihZXfT1
         /j+LSYNek0k0D6tFefn/aJglGI6wjcK+8Cbf8hCtUm1fOHNOsYuGHSG7BS0LgSg4B8tP
         qyu5hSefAwBjWFyC9OVaATggReHPsfW7lKz4cBZt3CZVkrdVEMry4aTJ38BjI9tcEtUb
         XGWg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id g18si2966324ejh.138.2019.09.03.03.18.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 03:18:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id C0FAFAC7F;
	Tue,  3 Sep 2019 10:18:42 +0000 (UTC)
From: Oliver Neukum <oneukum@suse.com>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	stern@rowland.harvard.edu
Cc: Oliver Neukum <oneukum@suse.com>
Subject: [usb-storage] [PATCH] scsi: ignore a failure to synchronize cache due
 to lack of authorization
Date: Tue,  3 Sep 2019 12:18:39 +0200
Message-Id: <20190903101840.16483-1-oneukum@suse.com>
X-Mailer: git-send-email 2.16.4
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
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

I've got a report about a UAS drive enclosure reporting back
Sense: Logical unit access not authorized
if the drive it holds is password protected. While the drive
is obviously unusable in that state as a mass storage device,
it still exists as a sd device and when the system is asked
to perform a suspend of the drive, it will be sent a
SYNCHRONIZE CACHE. If that fails due to password protection,
the error must be ignored.
---
 drivers/scsi/sd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 149d406aacc9..2d77f32e13d5 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -1655,7 +1655,8 @@ static int sd_sync_cache(struct scsi_disk *sdkp, struct scsi_sense_hdr *sshdr)
 		/* we need to evaluate the error return  */
 		if (scsi_sense_valid(sshdr) &&
 			(sshdr->asc == 0x3a ||	/* medium not present */
-			 sshdr->asc == 0x20))	/* invalid command */
+			 sshdr->asc == 0x20 ||	/* invalid command */
+			 (sshdr->asc == 0x74 && sshdr->ascq == 0x71)))	/* drive is password locked */
 				/* this is no error here */
 				return 0;
 
-- 
2.16.4

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903101840.16483-1-oneukum%40suse.com.
