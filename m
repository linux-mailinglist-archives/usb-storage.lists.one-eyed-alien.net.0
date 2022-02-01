Return-Path: <usb-storage+bncBAABBU6T42HQMGQE47BZLOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 892A54A673C
	for <lists+usb-storage@lfdr.de>; Tue,  1 Feb 2022 22:44:52 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id ej14-20020ad45a4e000000b00425d03eabe4sf14962020qvb.9
        for <lists+usb-storage@lfdr.de>; Tue, 01 Feb 2022 13:44:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643751891; cv=pass;
        d=google.com; s=arc-20160816;
        b=rbT2VmaVDj2nfpcljq9lLhy6LkW8r1NyJSxa1ShileTezGe8saSKcE1fMGIMqJKhbN
         Zk/OX4w8P1g8pGL8IUQaAAb4Mb7JR6OhTJb0NJN2JmSGf82DPm15f2EVUB/+R9O7oER6
         ECRDij40najSy7aNw1OkpJZQ//z9Lo7HKlP6ujA4Iwou8M9qRryw7rQtugLUVkyD0khp
         xY8yB0N0/85KmbVECZNfTRuGrWLN6GZWSoL3o43/H5Izh3efyFBqK+WoZjaEGnzniHgK
         YG/gA5MNYMEsZPOvNncTJ5/lZCKjpYWmf8KVYEzHospIOgjxvJLSDihUHcMAhPM47Ma+
         Ma5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HdfAhxyDJRQAhqhWSaDLnGK7SQoNk40hBGJhs8twHls=;
        b=G9BsL6sTC02KCxKZ5WJU6UfQ2ukysN9JeiTKuL/OnDCqnptmhMgHoxFptH8z2QPew1
         AZ2ypcWNfjGfiD8fUP6pBphNDQtIZCaS3dZIrzUEd45ppos8uZhTNnHUefNltgDd+3TG
         xTd1iar0MSS6aOp1KzbZ+zty3DRSaKnt7teecShnwxHOgWtnjERPMn3rs7/nHDx+0RvD
         FVT5GTfqOnFw+sZur0yEB/uKwwgN464hLdyZQdok54t1qM2kKZs4cuLTtQbqrakcykrj
         3dsbk+Ucb11TYd8DJrmY6Fk5yxYiVQB2mB/hpm10RRuEWHkCnc02NIVbAKY9LHKs/elc
         jq8g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HdfAhxyDJRQAhqhWSaDLnGK7SQoNk40hBGJhs8twHls=;
        b=LvT78f51BcvphZy4tSCh64R3C8urEXCr8VMWsLirLnXc715gfxEj0qsnCe6myC5Nmb
         14t/1opT/0pEGLfPxElPaNMWXw3Da2QQEefriA68i5YmwMzCugrzI+czVruqNrDBV2GA
         I8Nf/cCQpYDK43SZg4KN7ARmrM3d+CqbYKUC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HdfAhxyDJRQAhqhWSaDLnGK7SQoNk40hBGJhs8twHls=;
        b=XgLDlGQJ93pXDjn0dxrXNkBAQB7Rw9UpIk6rmkfIedVmcqiXfDWiecqBXiYH+hy8sq
         DNEh3h1/76jGptzQW9HIZwGhuoT1x7neOyUo6IhMHtHpMuTjw/rPHNAwyPQjYnxnn677
         7CYXRiDCpAT4PU7oifO1dSoUtP6HUjlFoeCe59dn0AISRSi7LTESpiqosCBKFZ+xy7aF
         8UhoOiwG6d9pCe8F1iL81pYxwZOqIwxh5uOGa6nOSIiuLxF/Mocgn9CEE8oSVMxq5N2r
         GDFUyOEqZg3UQ0v3EM0QrAexXkDzypnfocmWB/rwzYJbf0uOkszPA1JigDAU4v/3Rve8
         TmJA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530lJSYeqGL3xmEvc2iVhL5CFQ+kV2t1wQrY2aOiDoL07HBP1JjR
	wsuzk0HjjZ2+L9L5bziI8649MA==
X-Google-Smtp-Source: ABdhPJx9J6jy9amoHVfvJd0e/HcLrYxYGJYv+tT/4u7uFRZQslEa9lETXhNfZAYsitRrQUhiRrhn9g==
X-Received: by 2002:a05:620a:103c:: with SMTP id a28mr18729121qkk.425.1643751891362;
        Tue, 01 Feb 2022 13:44:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:461e:: with SMTP id br30ls11071643qkb.0.gmail; Tue,
 01 Feb 2022 13:44:51 -0800 (PST)
X-Received: by 2002:ae9:f306:: with SMTP id p6mr18499582qkg.709.1643751891057;
        Tue, 01 Feb 2022 13:44:51 -0800 (PST)
Received: by 2002:ae9:d619:0:b0:47b:8ba:1fde with SMTP id af79cd13be357-4e0e1386ff7ms85a;
        Tue, 1 Feb 2022 13:10:12 -0800 (PST)
X-Received: by 2002:a5d:4bd2:: with SMTP id l18mr23070896wrt.495.1643749811865;
        Tue, 01 Feb 2022 13:10:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643749811; cv=none;
        d=google.com; s=arc-20160816;
        b=Z59wWDjYJCh+2vaEPaF9Fo+1i4aEAQoh1i3vCxLHutLWtn0BcSDguqkYjKInmK1ky1
         9PPTk+BEoDe2+45L+1kgvkGj5cZkSgleibR1oWQaxRBU56pw0g6BU6P2ljONFxY/luj/
         8Y6hpJy8S+ewI/ye5lQC54ZNjip8QuLLb2vF3alFtjeGx+d00lpa6OSw/EBaYaAfG+SJ
         WHDVpQ6W+PH1sMANdtfsgq3xQ7o8cRzGUOfldnB71RKJrVoYHAtmOpfMGJwt5SvaTU7o
         26VxTtQ3sq1+CuRMa8ifgiMhP5/w+3IFzl0lR5BtGnZuhLTeeGDsccTIakqFpYeW8dP1
         ZW7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=R/DSLgJ8nRCtY4QmeMF2xw44FhnE+iqx2PmsYX+YUg0=;
        b=qRaIo6dIHbrtloaBYYBfPEhRIp16RqF+PEknmhSxm7a02qYXcx2MAii3Wg03ymfTip
         emWT5sfGEUkg6PlS8ZJ9t9omAcXU9j+LgLxCZJz9fNPS8UW6jrNrCVEWjvqBTjINOlHx
         n2JCsXFSHh5BwJ/nFoEZY8PKza9xSX4Vwh2NaZt7JNh6UspVzfU+AWIzrCqxivEJYvHB
         +3H3Qq1lan2k+5yjyWiCxz7TMuBXjWz1QrqeRCgQopYysn1fMBdPZceoHOe7TOCgX/Xb
         ZS2xJfWakzCBVcI50iPIEAsH/4fDkhR1zw6IGoTmZDmv4NgLkQPC9CqV+KhvGku1rv/X
         +BIA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by mx.google.com with ESMTPS id s13si6186470wrv.1014.2022.02.01.13.10.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 13:10:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
	by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
	(envelope-from <sebastian@breakpoint.cc>)
	id 1nF0Pj-0006wn-9E; Tue, 01 Feb 2022 22:10:11 +0100
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Subject: [usb-storage] [PATCH 2/2] usb: storage: Complete the scsi request directly.
Date: Tue,  1 Feb 2022 22:09:54 +0100
Message-Id: <20220201210954.570896-3-sebastian@breakpoint.cc>
In-Reply-To: <20220201210954.570896-1-sebastian@breakpoint.cc>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-Original-Sender: sebastian@breakpoint.cc
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as
 permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
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

The storage driver completes its requests directly from a kernel thread.

Use scsi_done_direct() to avoid waking ksoftirqd.

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 drivers/usb/storage/usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 8b543f2c98575..ed7c6ad96a743 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -417,7 +417,7 @@ static int usb_stor_control_thread(void * __us)
 		if (srb) {
 			usb_stor_dbg(us, "scsi cmd done, result=0x%x\n",
 					srb->result);
-			scsi_done(srb);
+			scsi_done_direct(srb);
 		}
 	} /* for (;;) */
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220201210954.570896-3-sebastian%40breakpoint.cc.
