Return-Path: <usb-storage+bncBDDLBMU22IMBBFOAQ2QQMGQEA5WIADY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 144EE6CA682
	for <lists+usb-storage@lfdr.de>; Mon, 27 Mar 2023 15:54:30 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id m27-20020a05600c3b1b00b003ee502f1b16sf4745130wms.9
        for <lists+usb-storage@lfdr.de>; Mon, 27 Mar 2023 06:54:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679925269; cv=pass;
        d=google.com; s=arc-20160816;
        b=MX8QakD+rhM3YRhNG7hODjUaEkHdY7uF+HO4wwr/JUTAlYD5x7Sm03Q+QPE7k5R+AW
         FGEZZfkkpTJX3FhyIDWHUQd6c3CC0mLFTwBqulpS9W4Is0S2URXEQS+5RyzkF7eT31Xq
         Lu1BpYMHWAv8d+RYLzFAeRw9iN+A6dgdd34vNlYGtOO2I0bkbtUZT58q/dgWj+0oxgYN
         P+s6TwTD4//V2x0+Bu/FEu/MRL7uEOYuStLswy+tlDqHubW7RmxQINzHet/14oCeXRMJ
         UGhaGRKWxhcxNxj7CV6jppwkUBZmZ2qBvGfnlLsYzq2rnlHu/pG2Uwv17+ti7F9hkha3
         p0zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FeiTl96H33UdRJYNBTPAkxPktYPaqAdpWdFV3R2ule4=;
        b=D0Db154ckyJ5Yc8D8mdMVw7//n2vsPlmY3RhtPgYBjWyuEFyDQ6xupgpCy3dr9Q5ji
         3AxiobIhzCwwYdGw4usAxKqvKKr28sIYBTknejy6SFLHKGogFFyE9Img317xnNCAaOlT
         +DNxWiuLqS/tx8o993vByIb1NEfdwdOGSToQDY5gQ3fnb/+lotuKda5cjZz0cgmDIf5i
         qQzpSUBegYYyW5MPHoWuRlq5o1ZvqnDoRjBuas6/2wCD37CPG4PBm3+eRkm0A+Nj3gwQ
         y4bpWMjtJdC9f/vmOErbSoAl04xatymNFLHMGSq+NFy1wxuxNixYj+cr/4YQ5HeOhbuR
         Jh0Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=SspAkpge;
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1679925269;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FeiTl96H33UdRJYNBTPAkxPktYPaqAdpWdFV3R2ule4=;
        b=JGdC/KPuplju5vciS2pjv3prn52fp25OSttX7A+ShWWqMbQrjS/+a81vk/yoO0oF8L
         YqyL1mPy2G3TNCiSg23zNMhuBNKE2Ob0XFdeuJasNj3XFp1cb9zOSKYEHAbyj2G5oHbj
         MemBO/d6cve7zDA3r4cC+QGJGUvEsWQQyTzYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679925269;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FeiTl96H33UdRJYNBTPAkxPktYPaqAdpWdFV3R2ule4=;
        b=VNeVrUHzlvxvkuWvpHrcflsW67D01VfjCIEvDrS20hcYsnhMmpk6mYoOAFs+MZNtFq
         nWwpAfZlOl+v146evfuUcOH8K8AVPmP/ja1a3+z0VN99+Nw6JkMiRKEkJ48uPPXyFTpb
         NoUGknV3ntc4a4IIGcrJv6Gm24dcCSthS+9ycJXLV5QjP3Rvpr1jR4pQ64f+JnRAxOl+
         sR2UFVI/YiB6Kgcxua3GsGHePxcTC7TmeHirwz0u+xMBFYhFR8Ft/J5tkND2Ngh5LwEM
         K0GWzyYhisJeQXeI6DBSNnJQVV+6u9jeo+Qyz4Uus4Lf0MWmIlQ3W1B0mw/IGMBHmTS3
         Mo5A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKUHuXsyqPr+qhj+JUVTX8EQ0PAOFNXzUkf66l1258dBxmCB3Cxo
	8aoTmhviZVP8Ny/mQOs5CPbj1Q==
X-Google-Smtp-Source: AK7set+c3ZknT6H37LOn6qMN571zIN3Tiz04VMmmZBDuat8tyihOD/SzUA90SKxLQmA3hpe8AxYp4A==
X-Received: by 2002:a05:600c:2312:b0:3ee:904a:d526 with SMTP id 18-20020a05600c231200b003ee904ad526mr2669223wmo.0.1679925269554;
        Mon, 27 Mar 2023 06:54:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:3b8a:b0:3ef:2ea3:191b with SMTP id
 n10-20020a05600c3b8a00b003ef2ea3191bls4270849wms.0.-pod-canary-gmail; Mon, 27
 Mar 2023 06:54:28 -0700 (PDT)
X-Received: by 2002:a7b:cbd0:0:b0:3ed:2a8f:e6dd with SMTP id n16-20020a7bcbd0000000b003ed2a8fe6ddmr9233127wmi.6.1679925268030;
        Mon, 27 Mar 2023 06:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679925268; cv=none;
        d=google.com; s=arc-20160816;
        b=0kWByk/tR2olfMJQq/yxvb0p7j2afustbFyWx4st6KaTmcqx7ZywlNn+lR6xvC/m+6
         UzpfoY4DIeQiIH352LhFpYKRQdQF4wDT0uPgMYc9MvXHsLMU+uqI7eaS9gwgW30GJvZr
         6IsvGT6aBGRXpYvYT/7/8e4OwSHPY9bn7y6S6d6nfN5kfH5sHtEezpF4Bsq4NzcwX7zi
         M+9C/8rbB/XhhMrlHBl4zcAXAbuDZTvqT7NhYr955St3Cj3oYQBHdx4wJUZTa4w2YByQ
         BT0TOmf5iCHjaRC+K0M8Fpvi88OScSuzUhhLQFPb0njymUkHvduplmKXrn4pr2dfRw/h
         6xSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lX2V9rHz5AfDlYh/m5Os1E5bKBhD8XeCXhZspUZN/Jc=;
        b=HZJicGArWAWjLX4ped+jv4kRw7ZbV+kMwTT2dMvCMwa0dsNPoSG+k9Tf4mvSYzLAs4
         opng6AEJaIJ5YCbjY5EGCkZHInKsPye9x4yww9VBTAd7cfsE6nQYt0sF/8QoCrWIJbIV
         /+wBmy4BMYYOs+BumWXngNmzSvSSSubCVfEidjgBGM3k+dhbuS9gpQa3ZI8t96ER+/MW
         OKNNoj5WfGNTBn25+MJossbL2AQ+ENOHoSzA/644x0HXdZ6lWq4pRy8EOxU4mH2lRSGz
         2MWpRFIt755q0ZNV0QBfgOsjgyZr8WGtDsZK9DWs1MPLP3DCVbKQX9BdmxxwBTqnnTVn
         AFkQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=SspAkpge;
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y13-20020a05600c364d00b003ed2469000csor1882118wmq.35.2023.03.27.06.54.28
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 27 Mar 2023 06:54:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a7b:ca4a:0:b0:3ee:5a48:5b54 with SMTP id m10-20020a7bca4a000000b003ee5a485b54mr9275833wml.16.1679925267664;
        Mon, 27 Mar 2023 06:54:27 -0700 (PDT)
Received: from localhost.localdomain (212-59-15-122.static.zebra.lt. [212.59.15.122])
        by smtp.gmail.com with ESMTPSA id u11-20020a05600c00cb00b003ef64affec7sm7371244wmm.22.2023.03.27.06.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 06:54:26 -0700 (PDT)
From: Yaroslav Furman <yaro330@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: yaro330@gmail.com,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] 
Date: Mon, 27 Mar 2023 16:54:22 +0300
Message-Id: <20230327135423.607033-1-Yaroslav.Furman@verifone.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <ZA12pMgwA/8CguYd@kroah.com>
References: <ZA12pMgwA/8CguYd@kroah.com>
MIME-Version: 1.0
X-Original-Sender: Yaro330@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=SspAkpge;       spf=pass
 (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=yaro330@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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


Will this patch get ported to LTS trees? It applies cleanly.
Would love to see it in 6.1 and 5.15 trees.

6.1 is what my steam deck is going to start using soon-ish.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230327135423.607033-1-Yaroslav.Furman%40verifone.com.
