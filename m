Return-Path: <usb-storage+bncBCJLBW6OUMMRBXWBWWHAMGQESRNPXWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id F13EB481A6C
	for <lists+usb-storage@lfdr.de>; Thu, 30 Dec 2021 08:33:51 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 13-20020a0562140d0d00b00411590233e8sf18873546qvh.15
        for <lists+usb-storage@lfdr.de>; Wed, 29 Dec 2021 23:33:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640849631; cv=pass;
        d=google.com; s=arc-20160816;
        b=Go3huD4V3dpk7Nw7K1szJ8aFOGRxq5dh9w+elt3mg+DgfMml7q7mTQqgiA99TXCHYi
         Orx/qaNqXdDGPJbcOrkaaL34BrcpaM492LJVje+2hG58UZ3uUX4syTvIJi28IuQMDDxh
         wmqcgkdaRwk0596uQvRuuakVyFDl7dcwpUJQ+66+H4SaeYAaLyj5j32lts7PQ+vq+z5x
         nBVRcgFcY/ie89ji7ubRjuxmNGK87lcw59OXYQ3XfhM8LW/I4iGHICA1CjUgt3Gi2zHH
         V9EdEGoFL6izSBUyMQv5IWYFKyyzoindyhgpGZdszwb/5JCQ2XU5jl3em9vpuBQ/i4n6
         VpHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :subject:references:cc:to:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=L0MAgftMzVL4q2IjA+3nFXCeqoDqeMokSTfMYy8A4YU=;
        b=ZJeXEaPmakTwlGtHVagUw5rF4UUSDlMsH+/QWCdZ17yScPbayzeY1+n1qX3CIrK86w
         GQOv4nR4ZyzANybvlKxDrtd29Uu/546fJTiTOAhZeT5Yu07wthEgZ5Lyr+3Gx4B7qN/H
         Uf6LOMMsQzBLEZliWpL8YRjTidli2g51pMt7pCQTy1+IdhMUi8HGz7I7ZpF4cKCbwnLu
         X+8dULARj95Tm+DwQUaBIY8/QiP7qF3QuynF6BzogjlDeRyot7oDpG/tes2Oy/bjp5te
         96LT/Lof40CpbzrQX23BA0I+ajpjU97NMKyidrR1TwgHk1Np1awvOJ01qb451LecCT08
         f+XQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:to:cc:references
         :subject:content-language:from:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L0MAgftMzVL4q2IjA+3nFXCeqoDqeMokSTfMYy8A4YU=;
        b=GUQIAwiqeC4dzOLPFeSLbs+4APcq9rNOhSyPmGCYMGZRA+JdzZC78IcYMlochpptE0
         R6E+/PBdS0upWyz8wxsRi28f9hSfOggA2RwvmpL19PWCL54mZXam2tgVW41g+qgRz05j
         EGSpkN6CqvLdmQG8jHjVyBdsWNWRpfmFe1MJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :to:cc:references:subject:content-language:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0MAgftMzVL4q2IjA+3nFXCeqoDqeMokSTfMYy8A4YU=;
        b=CAzReuVBUhj8Zvfow62VGxvd/R7q7trKSny9sjE7PFVCV1map+vfGw9y6L/0Jo4WnO
         fjHF1CT+SPVtHCl8eu3rZhIjqadtzjO8vbsOMdwU0JpyUBxNwUu0tjqQYcXyOOSavm1L
         eHpIxkhxxL1Mn2tWnJS/IxPvCGnedzrjCv0X3qocrWrOhafGDMkCAGmeVoAtr48WKHTF
         i4TL7pHg42rkEdR4oe7ObYaPCYPcVxR0dIweDZVjDdTfN/qmKR9kxa15pk8V066tIW7v
         b0uj4ojp/ndsxun1oeyO1EyyACcdYjPxl1Feegv/XVsUP+IaEkb7PEkTtAMkgb4DVDyu
         5dew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533OmImoaMoX8LCJiocX8+2ewgxD40nHNx+Gr7xUk0wDeUjk+bOI
	jVyHcedd1GsyXhr0J1YCbrI1PA==
X-Google-Smtp-Source: ABdhPJzM1KwTiU/MbHJW/ZWt25zn23OwULszS5pL8ZrpkfRe0nN2d5ua6ezNZIB32v40+QftOIMjHg==
X-Received: by 2002:a05:6214:1d0d:: with SMTP id e13mr26944796qvd.69.1640849630775;
        Wed, 29 Dec 2021 23:33:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:4048:: with SMTP id i8ls12217818qko.2.gmail; Wed,
 29 Dec 2021 23:33:50 -0800 (PST)
X-Received: by 2002:a05:620a:147c:: with SMTP id j28mr6710329qkl.416.1640849630358;
        Wed, 29 Dec 2021 23:33:50 -0800 (PST)
Received: by 2002:a37:9b94:0:b0:476:3d6e:aa63 with SMTP id af79cd13be357-4763d6eb1a1ms85a;
        Mon, 27 Dec 2021 23:47:17 -0800 (PST)
X-Received: by 2002:a5d:588c:: with SMTP id n12mr15065604wrf.363.1640677636529;
        Mon, 27 Dec 2021 23:47:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640677636; cv=none;
        d=google.com; s=arc-20160816;
        b=XhMhbavEw3djams3xWbQbl62nlBAtToR/XWTXG2yUfy3pzkMhprX5XkC6+Y6kQ3KRF
         CT5zB6zeZNPfsT+hpdeJVciKcUm/gpR0ogpdjS6xUUNgJcDA259e8inIZF7ZeOhTDqNS
         bLdPItb+QXB7/SA2jw4Aeyrn+xHgCLIfuycOHLjMKXkZ8pdNJwO9bQtyrFa4FTCqiIWg
         tC5RDiQp8TbnpHvV6VqExvI66lcXanpa8LoDMm8N5DpEjmKMz0shP3Jwwx8pDVZRRJMQ
         0H6TysbFYy70hj/JlMvjH1XZD6uzEploKIMwlaX8jgc8/pDWSzGFtePwS4GR3UxUXX5w
         k2lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:from:content-language:subject:references:cc:to
         :user-agent:mime-version:date:message-id;
        bh=DHqdSNTiOoNo3mAmrCEqxtU64N0VPO9e4T4ZGOLOmDE=;
        b=keFNKIVdwadWPOPAsD5o/Lbr8dHCtZRP/TeBBHpCOqBm6a6IkmSWg5Nag8fflTQLQg
         71NVRrMX2vuXXpo/DN7fQA5xWYN4Ea/0U2IB2gO89qbLsI7C02IxV8Ei2b73pjreqFpt
         yn8K7CMKUwYDpy92i1CvAmRCuBjb0l+j1YoSaMAF8y2myGya84LvwzlnOLkzZJBvYAuP
         ZixSxZKoaeCAYstCZAsoy70OdOphHAcpSaIb5qNpd/YefEICA2LbwVc5RRYK7I53LwIn
         SmZXXwOL8ksd5Cs8wAYxQAdOWcJbyPtU1okiqOC+o31s70uIKwcHWgpsLssJGzJ63LhY
         baJw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
Received: from smtp.smtpout.orange.fr (smtp05.smtpout.orange.fr. [80.12.242.127])
        by mx.google.com with ESMTPS id f12si7905165wmq.56.2021.12.27.23.47.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Dec 2021 23:47:16 -0800 (PST)
Received-SPF: neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) client-ip=80.12.242.127;
Received: from [192.168.1.18] ([86.243.171.122])
	by smtp.orange.fr with ESMTPA
	id 27CVnS4XgOvR027CVnKjjk; Tue, 28 Dec 2021 08:47:16 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Tue, 28 Dec 2021 08:47:16 +0100
X-ME-IP: 86.243.171.122
Content-Type: multipart/mixed; boundary="------------lI2ea0rdpfitzqaLBQKSpkWW"
Message-ID: <f78b974a-e36b-6d23-6977-fdf50c05600b@wanadoo.fr>
Date: Tue, 28 Dec 2021 08:47:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
To: syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com
Cc: glider@google.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 stern@rowland.harvard.edu, syzkaller-bugs@googlegroups.com,
 usb-storage@lists.one-eyed-alien.net,
 Kernel Janitors <kernel-janitors@vger.kernel.org>
References: <0000000000007d25ff059457342d@google.com>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
Content-Language: fr
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <0000000000007d25ff059457342d@google.com>
X-Original-Sender: christophe.jaillet@wanadoo.fr
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 80.12.242.127 is neither permitted nor denied by best guess
 record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
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

This is a multi-part message in MIME format.
--------------lI2ea0rdpfitzqaLBQKSpkWW
Content-Type: text/plain; charset="UTF-8"; format=flowed

Hi,

(2nd try - text only format - sorry for the noise)


first try to use syzbot. I hope I do it right.
Discussion about the syz report can be found at 
https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d@google.com/

This patch only test if alauda_get_media_status() (and its embedded 
usb_stor_ctrl_transfer()) before using the data.
In case of error, it returns USB_STOR_TRANSPORT_ERROR as done elsewhere.

#syz test: 
git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master

CJ

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f78b974a-e36b-6d23-6977-fdf50c05600b%40wanadoo.fr.

--------------lI2ea0rdpfitzqaLBQKSpkWW
Content-Type: text/x-csrc; charset=UTF-8; name="patch_alauda.c"
Content-Disposition: attachment; filename="patch_alauda.c"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL3N0b3JhZ2UvYWxhdWRhLmMgYi9kcml2ZXJzL3Vz
Yi9zdG9yYWdlL2FsYXVkYS5jCmluZGV4IDIwYjg1N2U5N2U2MC4uNmM0ODZkOTY0OTExIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3VzYi9zdG9yYWdlL2FsYXVkYS5jCisrKyBiL2RyaXZlcnMv
dXNiL3N0b3JhZ2UvYWxhdWRhLmMKQEAgLTMxOCw3ICszMTgsOCBAQCBzdGF0aWMgaW50IGFs
YXVkYV9nZXRfbWVkaWFfc3RhdHVzKHN0cnVjdCB1c19kYXRhICp1cywgdW5zaWduZWQgY2hh
ciAqZGF0YSkKIAlyYyA9IHVzYl9zdG9yX2N0cmxfdHJhbnNmZXIodXMsIHVzLT5yZWN2X2N0
cmxfcGlwZSwKIAkJY29tbWFuZCwgMHhjMCwgMCwgMSwgZGF0YSwgMik7CiAKLQl1c2Jfc3Rv
cl9kYmcodXMsICJNZWRpYSBzdGF0dXMgJTAyWCAlMDJYXG4iLCBkYXRhWzBdLCBkYXRhWzFd
KTsKKwlpZiAocmMgPT0gVVNCX1NUT1JfWEZFUl9HT09EKQorCQl1c2Jfc3Rvcl9kYmcodXMs
ICJNZWRpYSBzdGF0dXMgJTAyWCAlMDJYXG4iLCBkYXRhWzBdLCBkYXRhWzFdKTsKIAogCXJl
dHVybiByYzsKIH0KQEAgLTQ1Myw4ICs0NTQsMTEgQEAgc3RhdGljIGludCBhbGF1ZGFfY2hl
Y2tfbWVkaWEoc3RydWN0IHVzX2RhdGEgKnVzKQogewogCXN0cnVjdCBhbGF1ZGFfaW5mbyAq
aW5mbyA9IChzdHJ1Y3QgYWxhdWRhX2luZm8gKikgdXMtPmV4dHJhOwogCXVuc2lnbmVkIGNo
YXIgc3RhdHVzWzJdOworCWludCByYzsKIAotCWFsYXVkYV9nZXRfbWVkaWFfc3RhdHVzKHVz
LCBzdGF0dXMpOworCXJjID0gYWxhdWRhX2dldF9tZWRpYV9zdGF0dXModXMsIHN0YXR1cyk7
CisJaWYgKHJjICE9IFVTQl9TVE9SX1RSQU5TUE9SVF9HT09EKQorCQlyZXR1cm4gVVNCX1NU
T1JfVFJBTlNQT1JUX0VSUk9SOwogCiAJLyogQ2hlY2sgZm9yIG5vIG1lZGlhIG9yIGRvb3Ig
b3BlbiAqLwogCWlmICgoc3RhdHVzWzBdICYgMHg4MCkgfHwgKChzdGF0dXNbMF0gJiAweDFG
KSA9PSAweDEwKQo=
--------------lI2ea0rdpfitzqaLBQKSpkWW--

