Return-Path: <usb-storage+bncBCJLBW6OUMMRBXWBWWHAMGQESRNPXWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id F37C9481A6D
	for <lists+usb-storage@lfdr.de>; Thu, 30 Dec 2021 08:33:51 +0100 (CET)
Received: by mail-qk1-x746.google.com with SMTP id ay43-20020a05620a17ab00b0046dcc2fb1c7sf13810549qkb.2
        for <lists+usb-storage@lfdr.de>; Wed, 29 Dec 2021 23:33:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640849631; cv=pass;
        d=google.com; s=arc-20160816;
        b=TuWPBUZNiKkDOAR3qZZhdufYaAoEZtJ2ybpEtL5lXwi912ouF+0I0aRG4cqxEQGrmR
         J/S4XS0zK0oY4yNRj8QcY1sS+y4gpWL6IdjEkGxZSmjBgMW01/B45IUHWfi3MVldsfK0
         E3ykMNPkXQ2YnIYv5yqDrp/t41YH9vaJZQF7AYrYPUzT4qer7nL0bi28pcF1DqGswSbi
         FxLMfYyWgj3NSt896Ih1Yu9fMBCrWhCuDSAq3Z4lYbKHsAUsMcYAuD+UgLO8Qqt0tCb4
         5HjuSPqnLp/WS/SOisX/2YV0TqzWB7EpR0yXQZzIEXa+O9XwahPDWVjKkXovE7EN2eXs
         61iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :subject:references:cc:to:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=58fmbdBXDXKoZ67YFn+reO6aanXgCRdw1ck5Ba7pPGo=;
        b=Ay1KFFj2MK4oBa1gqnNGb7suPqKWEwpjW8QYNdyeTzKZE4plk4v7LmM6IxXBmS6UPp
         BougI0PjAQt6anFHqDUbwd4pVf3obelcmZd8EiP40rRtU+12tIC83fG8/yBJ7LDX11Ch
         tIQlazpZ+mDC1TsdkYqRdNMNjt4V9LVpoH9OpZxU8Novm4OWF8CETRMTpc4GH4Po0lEp
         Nm2/01Z6agUDRSdH2QGVQRy+LBttTDDQbgrqjpAD4f3i5lwWpbUdmx0Jqpsa+/rjlyTI
         X0+NcTuFrlPUiauGDTBDMP3sRQL9qqbxmm4DAOpEUoCHq2n8qTRNN5V+qKy14q8PSJSg
         KnFg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:to:cc:references
         :subject:content-language:from:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=58fmbdBXDXKoZ67YFn+reO6aanXgCRdw1ck5Ba7pPGo=;
        b=S30YAF9hr7SUekwaBiXypUfJE6imESePvh/zGn3NsWx7FignVSW/oXkyWbUvhFvH76
         t3h61oUj3nMI+D0rjhDdk3YkjlvanShPBDDNLbANBsYPRt6hbof9PI+BP/+7Vu0O6LQq
         LrQTfwjRj57ID020WlX7UAGf88/W/OEufErKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :to:cc:references:subject:content-language:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=58fmbdBXDXKoZ67YFn+reO6aanXgCRdw1ck5Ba7pPGo=;
        b=NDbv2BgSRMzHQFD6db08714OOdi5eL59ZK86FuHZWVvXK+v9NuQ6Q93on981Lv6oIi
         mhjDz4Fo5Q5VFeleUPXW8wHFOzI3c8SeI793R03EjVpkB+JEjx/kiaRaGxEbeUYFho2f
         JKTHGLssG6APl5rnKVBJmvBE8IFlxlp1v0Iw2MrpBCcApJjGc82P2+kd9kiCHn4ZtQty
         AoOGmd31E7AYzg6XviOcraJ31aYNd/6bTc/ezvu2qbFQ4qaBSozQa1oPB7ZkKhAh6lee
         jwbA+X2+/hHFwfloAR7snfBpet+JGcv1S1n2+TGLg+Fir3+fGk0TVy2LarzbdbwPFte4
         CtzQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531O9tLDbsJ+M2mVK46Qy3mXCPF7alNMP/HTR6x25xcY71LevhJO
	uC/d/ODXas/Ib65/U+e7pAyDcA==
X-Google-Smtp-Source: ABdhPJxFQm0kdIchgyirO6aV60Ya9lhAyA74coxnnD+P4dK6xTAFDk3IjvHVMAMDYlzDYij5PPlV5w==
X-Received: by 2002:a37:54d:: with SMTP id 74mr21360387qkf.664.1640849630791;
        Wed, 29 Dec 2021 23:33:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:29ca:: with SMTP id s10ls12205556qkp.8.gmail; Wed,
 29 Dec 2021 23:33:50 -0800 (PST)
X-Received: by 2002:a05:620a:1f8:: with SMTP id x24mr20759987qkn.773.1640849630447;
        Wed, 29 Dec 2021 23:33:50 -0800 (PST)
Received: by 2002:a05:620a:2613:b0:467:fd5b:bef with SMTP id af79cd13be357-4759bd4d4eams85a;
        Mon, 27 Dec 2021 23:33:59 -0800 (PST)
X-Received: by 2002:a5d:6108:: with SMTP id v8mr14915297wrt.661.1640676838445;
        Mon, 27 Dec 2021 23:33:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640676838; cv=none;
        d=google.com; s=arc-20160816;
        b=tJfhwpuI30c98JJSk0SgvdqeM+lVDuneGz+yYxjaePzCrkAty/4q4Bfgv32cHdV5be
         8IJH/snaHIh6CNY0A2gZ0FF1Qd0B7fDhJAF5pIGmheg+heg08VMw+fkm+O3+UgX4jgdD
         +bG9dqqOxik/ldT6qRygCVkqjw8QxXLa4snlzfIcDXn0YUtWEGKF1O9FVTndo23sl3yc
         ijia8k8kNV1LMiv6JcM0dsQfz/Fd9EGDjwe8z/ldf3vb2uvNoNE2MkauSWtOfQwpSrFd
         8TexfK2flrejcDXtnL4rJRQ5pCa7b3vf+qlZ/gQ+yXHVZJEb2z2zjxAW5KqFJ3MtXT4G
         So1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:from:content-language:subject:references:cc:to
         :user-agent:mime-version:date:message-id;
        bh=AM6A3TqCXfp56DRTzlsrZP28fBABNbj3yzsiHV3IWTk=;
        b=I3lJYeMvBVxwj7EHv6wuI2KvBCK681CHh9WckxZxmt9SIVcpCBP7ZMyScgpAXKDehS
         +0wnKUawzrx2Az2JJT084pr7N+N8M0q38Wo6yPDBHeNzlaMI0yfbG5JsO1va0IpTc9k1
         hxZDoNNc3dGSrklxeL8PSf4trykQ7nzIMWgTEerzv18pNC/QczN2pf3LALB2lTYOMF9m
         BzAgNwC4b3roXFTsJEFlNJ6rVVv5R150zD8U1jHuHq3/vyT9Bm8uCm6wVCBeZ4MT06o/
         VePRmG4n+kiCl7/a4rHTF+wjbwbe7LEvF9Snzg6eAT2/pWExXu7MoMo2wwvxj4KWExvY
         QvoQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
Received: from smtp.smtpout.orange.fr (smtp05.smtpout.orange.fr. [80.12.242.127])
        by mx.google.com with ESMTPS id v5si9704741wrq.24.2021.12.27.23.33.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Dec 2021 23:33:58 -0800 (PST)
Received-SPF: neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) client-ip=80.12.242.127;
Received: from [192.168.1.18] ([86.243.171.122])
	by smtp.orange.fr with ESMTPA
	id 26zcnRysyOvR026zcnKhho; Tue, 28 Dec 2021 08:33:58 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Tue, 28 Dec 2021 08:33:58 +0100
X-ME-IP: 86.243.171.122
Content-Type: multipart/mixed; boundary="------------yWzYPmPDJoG0YrUASXbHZuzF"
Message-ID: <bf7e0735-a2e4-816d-9571-5c65f6a1014e@wanadoo.fr>
Date: Tue, 28 Dec 2021 08:33:56 +0100
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
Content-Language: en-US
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
--------------yWzYPmPDJoG0YrUASXbHZuzF
Content-Type: multipart/alternative;
 boundary="------------yzNlwNRtSyrxyMHVfU0MBsT9"

--------------yzNlwNRtSyrxyMHVfU0MBsT9
Content-Type: text/plain; charset="UTF-8"; format=flowed

Hi,

first try to use syzbot. I hope I do it right.
Discussion about the syz report can be found at 
https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d@google.com/

This patch only test if alauda_get_media_status() (and its embedded 
usb_stor_ctrl_transfer()) before using the data.
In case of error, it returns USB_STOR_TRANSPORT_ERROR as done elsewhere.

|#syz test: 
git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master CJ |

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bf7e0735-a2e4-816d-9571-5c65f6a1014e%40wanadoo.fr.

--------------yzNlwNRtSyrxyMHVfU0MBsT9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Hi,</p>
    <p>first try to use syzbot. I hope I do it right.<br>
      Discussion about the syz report can be found at
<a class=3D"moz-txt-link-freetext" href=3D"https://lore.kernel.org/linux-ke=
rnel/0000000000007d25ff059457342d@google.com/">https://lore.kernel.org/linu=
x-kernel/0000000000007d25ff059457342d@google.com/</a><br>
    </p>
    <p>This patch only test if alauda_get_media_status() (and its
      embedded usb_stor_ctrl_transfer()) before using the data.<br>
      In case of error, it returns USB_STOR_TRANSPORT_ERROR as done
      elsewhere.<br>
    </p>
    <pre><code>#syz test: git://git.kernel.org/pub/scm/linux/kernel/git/nex=
t/linux-next.git master

CJ

</code></pre>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bf7e0735-a2e4-816d-9571-5=
c65f6a1014e%40wanadoo.fr?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bf7e0735-a2e=
4-816d-9571-5c65f6a1014e%40wanadoo.fr</a>.<br />

--------------yzNlwNRtSyrxyMHVfU0MBsT9--

--------------yWzYPmPDJoG0YrUASXbHZuzF
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
--------------yWzYPmPDJoG0YrUASXbHZuzF--

