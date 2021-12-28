Return-Path: <usb-storage+bncBCJLBW6OUMMRBXWBWWHAMGQESRNPXWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AD3481A6E
	for <lists+usb-storage@lfdr.de>; Thu, 30 Dec 2021 08:33:52 +0100 (CET)
Received: by mail-qk1-x746.google.com with SMTP id y24-20020a37e318000000b0047687b4d282sf6431111qki.3
        for <lists+usb-storage@lfdr.de>; Wed, 29 Dec 2021 23:33:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640849631; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2yUSzTEubvkbIVirKVZtwzGUTa3oOaqhQ317raA/OIs/yz/QRCBIes33brfrDrmqh
         iiM3+IidpDt96tN1IrgGoc7s3dUZ95zDRK1Mi2zKmfFtADjXRGKq08tq2+7oUrgNxLbj
         TEbQKulf/yh+7CRPpWMl1HWRx1nLvHfOHq7GFgPTLuzgKKY/zgZvgNWOj1LwgcZVrpu9
         Hv+d82kGut3jdtv+L5op4IAKl8mk0Ss0coDBvtzWSz3z2jfMGx0xrzjbrMtqURg12cHE
         ClZZ7QpFsKC056oZh45cuzda9AV3yMWQjukskE/edGFSz3PtpjcZ2owmo4MHgouYZZix
         sq6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :subject:references:cc:to:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=jkS42uAFKrrXwKBxE57yPODljuF+8PWKbGcPxlfknv8=;
        b=BOmXyvF7R9N8ylWTTIslew5Rw/OBcB77P+HubMGVdSaIlqstfHzX8ibUGVtWITu7nm
         0Qa4+GuGs8Nxu2WSolh6Ep+1etnZ8/WPzSTIqmxZyhqTmCj9MsvX5nBZtMr9lMkSmxKT
         d2xeyWNHoLuIMQWI3k8IWuzQioEWEQHgEuLrOGqXSt3dsXcX080CRwmuiFAyaBTA3yNT
         JXMWwz/4DiE8bfnAICisj4Xf7NZTtEyC65KRL23E+bKjFcEIwYkUmYQmeIHck7xCM169
         e5WJ7gDAEc5/x/jTfmLMLPYdoAnBY1SjWxD/s/CXVeKiwEl8G4Fa6X+fUbPDxc0CmXpB
         6qiA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:to:cc:references
         :subject:content-language:from:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jkS42uAFKrrXwKBxE57yPODljuF+8PWKbGcPxlfknv8=;
        b=dpPswm0pJSTq+OmLAvhlOjLeuApwJ9l4GJ5czayyb4Hyi5+C9Ji+B9cckSXG/6Z45S
         HTTDSrQnIQ0TRhwfwQITQikr3lkY1Q7LXFsGf/aPXhLP+JjJJXmrkcBpYANZL9hPnjzx
         aFYBoFz+gF/2XilGRuHkjrVzpdY3Z/p8CdSwU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :to:cc:references:subject:content-language:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jkS42uAFKrrXwKBxE57yPODljuF+8PWKbGcPxlfknv8=;
        b=ui0OE5mbSrp4JzXbHIFzIrVBfkKaIFUnyBl3KXnZ03WEejm0XgDQdDeMaNYknMTJEG
         PWFYEd7K3kzDE34+owEkm1Lx8WaYfrPvUWt+15yOwyLE8iP8R+B3GM05Y3Id8B8gnkHw
         WZraghnZfYk4u+70RJfCxJym6APR5pXla7Rzp7TJ09Grx9yetPPLln+ZzhiVzaaPlwD8
         skjo/RgDjHEYEBXCse8pl8qCYbmro0xJyBme67v+wtjS+B90S9ooaAPVL2CjOje1Bn9F
         zWEftbAS7z9y/HN/JVv6vAqhTlmJbxPcjHFMh5qsc/8xfYCSlLdqpqjxypsuFt39of1Y
         PfmA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5324axIN6Sx6lcxK30byenxpNPzK/sZgykIuC3L8HNxKh2QyOj1/
	Jzx20WobYWp6GaGmXQdr2mh4QA==
X-Google-Smtp-Source: ABdhPJymQHwvD1W0EsxuAwpm+43KWZlrH9Vluadmgv8HcA6RMChnLwRaPFXdEeJXupUeIz1X51UlQQ==
X-Received: by 2002:ac8:5e07:: with SMTP id h7mr25848505qtx.422.1640849630799;
        Wed, 29 Dec 2021 23:33:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:1744:: with SMTP id dc4ls2411756qvb.4.gmail; Wed,
 29 Dec 2021 23:33:50 -0800 (PST)
X-Received: by 2002:a05:6214:21ea:: with SMTP id p10mr26403164qvj.89.1640849630356;
        Wed, 29 Dec 2021 23:33:50 -0800 (PST)
Received: by 2002:a05:620a:4455:b0:467:c89c:4f3 with SMTP id af79cd13be357-4757ebea70cms85a;
        Mon, 27 Dec 2021 23:52:14 -0800 (PST)
X-Received: by 2002:a05:600c:4ec7:: with SMTP id g7mr15775617wmq.152.1640677933712;
        Mon, 27 Dec 2021 23:52:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640677933; cv=none;
        d=google.com; s=arc-20160816;
        b=Mk4OPOeIrC5ntRaZ54WgeCdtYzwUzPnhm04JZYc+I3n/yTep67veivLu7L27FDM75q
         9JuXO45bUqT6ufHrxV5v0HaY0GUOG4TmSEmwwGSieFkb3HXy1XhcDwK05RAbg1Zq90Yt
         7fG2ht0zbLeBpTn0d9Qcznm3dIPem9gftAOSxbGP8lwPQPozCgphqlYIPea4GslKcWiw
         VAKKc4X5itKMpYegb4xGX6cZDmPURBv3FSx9gWycVkYEmcfIf5ONqSf37wy5cyR2qgC8
         vbSH2NeTtnvqSh18B7NTNm1/VYpkJ5wA1H6D1FEj71MUO+eSOPQ6weaeM/aQ6EcPE9Ou
         Sj3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:from:content-language:subject:references:cc:to
         :user-agent:mime-version:date:message-id;
        bh=YO3R0lChYAPuYSTvyZaO/bAsQpkJ/RChUCTaVY6w96o=;
        b=mP0WobIzRuralGzrY/Hw/61X5mWMKL1Hhr6g+MkCJ0V5hemXWo27YbFM4kozTLCdxd
         hAn4lNEUU0ZnBgnr1oed1dRpehme9bbSRZn9LXVzsQBBQs65MTicq5P6dl73iacguxtS
         IbhiC0fzzLf1zVNIRAtc+682p6LasRVvJdYbuHVipbqszUa3xrN1X6KabD6WFZU9WaC6
         oE9bPQQwD8iI5JYuaOiZ1OfHCA4fT4GYwDCZPK2b0JhmEwrRPQjZ8yS7uUqvnzhzCME7
         MBLQ8CKJ+cHqFseAvzRfQPBiNLh8Vdm9EJdZywNLFh88F8c+rLfJTtJZ6FwpNHe9UpES
         CaEg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
Received: from smtp.smtpout.orange.fr (smtp05.smtpout.orange.fr. [80.12.242.127])
        by mx.google.com with ESMTPS id c63si12227365wma.228.2021.12.27.23.52.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Dec 2021 23:52:13 -0800 (PST)
Received-SPF: neutral (google.com: 80.12.242.127 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) client-ip=80.12.242.127;
Received: from [192.168.1.18] ([86.243.171.122])
	by smtp.orange.fr with ESMTPA
	id 27HInS6fBOvR027HInKkT4; Tue, 28 Dec 2021 08:52:13 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Tue, 28 Dec 2021 08:52:13 +0100
X-ME-IP: 86.243.171.122
Content-Type: multipart/alternative;
 boundary="------------fuL9OikC2OFq96qWHwmmKwaL"
Message-ID: <cca3b7b4-d9cf-a275-ec0a-c99720a94049@wanadoo.fr>
Date: Tue, 28 Dec 2021 08:52:12 +0100
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
--------------fuL9OikC2OFq96qWHwmmKwaL
Content-Type: text/plain; charset="UTF-8"; format=flowed

Hi,

(3rd try - text only format, other git repo to please syzbot - sorry for 
the noise)


first try (ok, 3rd...) to use syzbot. I hope I do it right.
Discussion about the syz report can be found at 
https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org/ 


This patch only test if alauda_get_media_status() (and its embedded 
usb_stor_ctrl_transfer()) before using the data.
In case of error, it returns USB_STOR_TRANSPORT_ERROR as done elsewhere.

#syz test: |https://github.com/google/kmsan.git| master

CJ

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cca3b7b4-d9cf-a275-ec0a-c99720a94049%40wanadoo.fr.

--------------fuL9OikC2OFq96qWHwmmKwaL
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>
    </p>
    <div class=3D"moz-text-flowed" style=3D"font-family: -moz-fixed;
      font-size: 12px;" lang=3D"x-unicode">Hi,
      <br>
      <br>
      (3rd try - text only format, other git repo to please syzbot -
      sorry for the noise)
      <br>
      <br>
      <br>
      first try (ok, 3rd...) to use syzbot. I hope I do it right.<br>
      Discussion about the syz report can be found at <a
        class=3D"moz-txt-link-freetext"
href=3D"https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d-h=
pIqsD4AKlfQT0dZR+AlfA@public.gmane.org/">https://lore.kernel.org/linux-kern=
el/0000000000007d25ff059457342d-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org/</a=
>
      <br>
      <br>
      This patch only test if alauda_get_media_status() (and its
      embedded usb_stor_ctrl_transfer()) before using the data.
      <br>
      In case of error, it returns USB_STOR_TRANSPORT_ERROR as done
      elsewhere.
      <br>
      <br>
      #syz test: <code><a class=3D"moz-txt-link-freetext" href=3D"https://g=
ithub.com/google/kmsan.git">https://github.com/google/kmsan.git</a></code>
      master
      <br>
      <br>
      CJ
      <br>
      <br>
    </div>
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
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cca3b7b4-d9cf-a275-ec0a-c=
99720a94049%40wanadoo.fr?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cca3b7b4-d9c=
f-a275-ec0a-c99720a94049%40wanadoo.fr</a>.<br />

--------------fuL9OikC2OFq96qWHwmmKwaL--

