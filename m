Return-Path: <usb-storage+bncBAABBU6T42HQMGQE47BZLOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 871FF4A673B
	for <lists+usb-storage@lfdr.de>; Tue,  1 Feb 2022 22:44:52 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id e14-20020ac84b4e000000b002cfbbdf8206sf14035848qts.10
        for <lists+usb-storage@lfdr.de>; Tue, 01 Feb 2022 13:44:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643751891; cv=pass;
        d=google.com; s=arc-20160816;
        b=gddARx/sel5PCYtNriNn6fwnpyDjWOPwKKZPlTIXmTu3XP+luLm6RIU1rWEgLn/8il
         GxQP0YAO5XjeoGb5zSsX58WgnSlZqM52yV0tg0sTe9a3eY0HQ5ulbgfEgUFaejNjMe7w
         95WmY8wVWudci+S7RPCJ0QBsFs3wmyuVWIikS+nmUxL6DMTGpgLsbdQCsR7MAT7+Aomh
         0/JJy94XDXMw3ImU6dpKO09SNmI7NPKApJpTqZxalN/OzKV1vmRHAzBFhUNeQB8QjQQj
         podNdZp+lgU6P5Dpj00VA4uJRMUCuFRSJ0BiYzkZOC7u6VXshoDRdUFdDw5dOGFK6Dh8
         u7nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=UWdnhopScFVowxxfML3czwj3ov+pf9DMdyml5FK8nfI=;
        b=h+VOQuZMwaU5duxgUGccq9UcukkliCn+MZkW8vTby/5tWYBgdqb2L2yapKjn/7jVyp
         GQcGgRpAeYIgqHndQrMqYFZCZyFzOGYuFt4TLxFnxLfSiIsF4XAKxZKt/jp71Xbb5mHO
         MPU2jRBLqOzrkmYp3DjPu1BESC9fgYciVGKt4xm0RWGWnMHh5PjSFTSGNZnSRANGWQdH
         f7RY0S3AImLSjBOeEN9+3GLaU42X4H+r9QbhZFnHeGPDOve2R6mBf8b87ex+quvGJXp4
         OyZbZKE5GnLyUmeyJH14rgUxl+F54soPJUHRuG0S86ZPMeLmbFKPCIq3Ld9kIBMQR1JL
         68+g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UWdnhopScFVowxxfML3czwj3ov+pf9DMdyml5FK8nfI=;
        b=PH0fKrkrS0DNn3kpL6iWwGU7mjwaEjwN40Uo1oXQBLxNOGgOV0UN3EfFWBk7Yywtrx
         PLAzbrpNQ/JLAdGOD9pSGlXr3sTptYF01ebuxyXhq2fDL45/vqTwoxYF5hJWK1BYT6xX
         uhj9HpWQCk7js/HQCgebS5EckJz0T+qv0Cbm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UWdnhopScFVowxxfML3czwj3ov+pf9DMdyml5FK8nfI=;
        b=Y91O6O+ouExSWTcdhW1xTFCzJG3OLKprNU03o8P2BwP+nAwsBI8l8nnqEjNEnWsR2T
         nELpkmV3wTMc4fUpxkcDOlq7C1OYC72NK6VNUkFjYe2OSeLhFPK95WtthEM3qwa9Rf8+
         9LDKejS7tWgD8RWFfR9GDbNQf1cUcwwptsBwPGlhRdplK4kyJgOQS/PcUh1X7NqLgGTA
         bLSWlZWYas/JPTt136xSpFnakYa3HYaevXD5hFT+uBQ72V79NbZmAeLQDNfAi36Q4Rny
         yoeXCUIXhHqlQOLKdwI8xzssAAJfZwPA7rbFVyaOy4Yma8ztKcu46vMZTIF1zwBHG6w7
         J23A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530nwPVGRMIx2eLeH8c6i5UE6iwIWd1/paZ8YZTPwldSBnHkXP7T
	XKXhCDM097fQEH1Fpy/H2R3LFg==
X-Google-Smtp-Source: ABdhPJzaoV+YImpZkNKWS1RSmcWulF/BcNTOEj+sMCrhA8ERG0/fRmPD67bks4cUBbO0rzwuPuT2Pg==
X-Received: by 2002:ad4:4ea1:: with SMTP id ed1mr23851287qvb.94.1643751891387;
        Tue, 01 Feb 2022 13:44:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:440e:: with SMTP id j14ls7415621qtn.8.gmail; Tue, 01 Feb
 2022 13:44:51 -0800 (PST)
X-Received: by 2002:ac8:5804:: with SMTP id g4mr18503824qtg.467.1643751890946;
        Tue, 01 Feb 2022 13:44:50 -0800 (PST)
Received: by 2002:a05:620a:2708:b0:47c:48e8:1ec2 with SMTP id af79cd13be357-4e0e134c25dms85a;
        Tue, 1 Feb 2022 13:10:13 -0800 (PST)
X-Received: by 2002:a05:600c:2251:: with SMTP id a17mr3453123wmm.102.1643749812561;
        Tue, 01 Feb 2022 13:10:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643749812; cv=none;
        d=google.com; s=arc-20160816;
        b=a7JpYbkuZcnZq8PYbfROSnD8TcsSv+P5Eb3GayiLFJjMgaH2IPicUEc4549x9FUl1C
         W+uOGkTWfIFSpLWVeptm6kCtltXcRAWlpmYpqmjmDn9L+NW54AyLj0zJdhfBKKQpw8KL
         bvTKXMhRdVsRK20+nhcIbIO6t0eI9FXgV3sGHNQgWlTK2goQsN78HvQRamPt22E4ZqyB
         NbPLKcJbZ2SwLO4gn04pU7Hy76mqvBn+RYgGlMVr9IPy3hUnn0I8eHFq9H6nm6ihvcoN
         ZErh8CBowwzDHSg5uMKsup175bcX9QfWkDu9kO1EzdcRCqQuC5E6tCHjLOjvpoLyNDaE
         V8fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Z4sS9zbDhGch3h7DKes5Hie+BgngFnEp5OgTUxD6dQ8=;
        b=GCXjiMhc9m+ziSQEXAn8d556kXcsv4XNRW+g6bWz6dDLhM8Do1WV+R2xyMZQa934ZH
         UY5n4/R0FpKnG/kawVNvuJmEcdmcG4H/LJgH5BNLI1HOIihguB6nkJqfgud86fZxbvwD
         kiAjvidhnusdphy/S14DgdAiyUU1G5vWlS6i9i6C6VzTqP7xffAA2dum3/lKg0M34BOv
         Wb+poIXmUfbppMXagNrdeif/N+6kKjvfF3qvs9WGnMDinfq1YmyFkwmKNYSDfS+wgVn6
         lrusp3LjzJQYbG5ra8ExDBsJJaIgPHYFp9DVUq5qyD+1/rdbQZfU0s4RkdXtAodCFelr
         37kA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by mx.google.com with ESMTPS id f14si4233100wry.93.2022.02.01.13.10.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 13:10:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
	by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
	(envelope-from <sebastian@breakpoint.cc>)
	id 1nF0Pc-0006wn-06; Tue, 01 Feb 2022 22:10:04 +0100
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb-storage] [PATCH 0/2] Add scsi_done_direct() to complete request directly.
Date: Tue,  1 Feb 2022 22:09:52 +0100
Message-Id: <20220201210954.570896-1-sebastian@breakpoint.cc>
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

This mini series adds scsi_done_direct() in order to complete scsi
requests directly via blk_mq_complete_request_direct(). This used by the
usb-storage driver.

Sebastian


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220201210954.570896-1-sebastian%40breakpoint.cc.
