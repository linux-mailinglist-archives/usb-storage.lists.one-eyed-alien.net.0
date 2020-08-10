Return-Path: <usb-storage+bncBDU5DXUG4MFRBOMGY34QKGQEV3P6O5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0DE240BE3
	for <lists+usb-storage@lfdr.de>; Mon, 10 Aug 2020 19:26:18 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id da13sf3522191edb.0
        for <lists+usb-storage@lfdr.de>; Mon, 10 Aug 2020 10:26:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597080378; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z2iwOEZ33QUG2+dO6XpdoZ6zsmEguaqfy2KTLFdCP7zcK8GUMISdQaK7ScY7kLi1Qp
         QFZxV5mPmyE7KzXM1xpSge/1TmXQ5tINvo1qTArTFZLbvJfVm9Dsa0IPRLGraOPGDmXM
         OG7PaLNp9CD/COnKKiWzfr3DvnF4myeNKQY0vSNXNgyOgAHBm/QyZI9D8Y213wGmeA2R
         XCfEcGbwYdHHYQ9Lub4cG1Ue//cs61ZoIlLb5jhMjsFY/NLxe8FOLdgkWRx14DLiYysZ
         /J/CAHWPHS5OyhGXuZ14Dt7k3QO9bm+cjP5Ct0zcERmP+cQndp/U9E7lLvHWEdKe6yo9
         2Kvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=qEou0Zq8wqkEa3TeaGA/rfFLPHjXF8uwjE3rspOTIO8=;
        b=t9jvPYThvaZbaN9rqnFE59NFAk1+CLD16yS+4rkg3ax3tG8YMF8K3DOed48yoQQLjq
         F3fg+OEEbyhYsr9yMqz1Fo7zcoorK2E86rxYzanmdy9qfaxooEOxpHYVuQwhO4jjikGi
         msFBSTvyqeLcHfcI/Ckg1DueL9ekjwYU1QQQa7G4+7OiT6/42HZ42w05SeIP4T0WyZP3
         ns8eVDfQCy/Ttkr/IqPONobJtYlIN3/of00fMzUI8KgIZpBHnocMDnqKl6Z9aFwLhXP5
         vRkpxtHu3pDi3flAoiZdr6W40JoSoVjTndA5eVC3sIvSvujcrS4H8ujE6edRKzT7FCwf
         8umA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qEou0Zq8wqkEa3TeaGA/rfFLPHjXF8uwjE3rspOTIO8=;
        b=TvdG4F0enNuqevcA82isy8DB8EkF/5vfOTOZpDztqHdR133sm8A7ot5T8aegbV1VZF
         AySOO9AU9r1otvJjMp/u/+5tAHaNNnt/96W4jX7v50wGIO1meeegk+x53AtgHGXnEpKt
         tT5fJ7BfP/10iIgXcOXYpg/ff/Ag0sk5ARUW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qEou0Zq8wqkEa3TeaGA/rfFLPHjXF8uwjE3rspOTIO8=;
        b=gPch33VEuPM9ehTyFeVT/Ik/5YdBkc1s2Zgph6cSbV2z1I3rLROeudQ09F3JiFdGXI
         3l6SgNpCZpA1D7sfwlK4rH4L8vDgQuyv1XjvkRSfA55h8NkLl2XudyI4+Ef2Vg5g477r
         mJLljw8MkGATcAoaQr16JiRnXwcFeVapXGE/yuQApugs84j5wgFq/7LWQxkDRHRW2FB3
         0r++Dr5APGOeXTAD/EWDw1a+2COx9xYnXOSZgMXm3wZ3MicekVY6C2GT83lk4ZwPu0QK
         2u1skt1HEIczyGXj96w5AzDzdT74g0j06wPQofPZksjGqgxdq1MMzjTnf7iAmrpxcUOK
         4Mzw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5323ob8o3pt8BfHo47l1F5PjR2e9JZaKYsQS26hasC9imV8yv6f0
	5JoqHnFHbxFFWPndNuW8v8QDrA==
X-Google-Smtp-Source: ABdhPJygMRKQvLc9ebPEImoI6/dh+CbN9lcH9rFFXBmnDx09eynWLR0SG8dhrQ30IKYA/flI3s6Ynw==
X-Received: by 2002:a05:6402:2042:: with SMTP id bc2mr22339233edb.109.1597080377934;
        Mon, 10 Aug 2020 10:26:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:5e03:: with SMTP id n3ls8375249eju.1.gmail; Mon, 10
 Aug 2020 10:26:17 -0700 (PDT)
X-Received: by 2002:a17:906:7715:: with SMTP id q21mr22384053ejm.251.1597080377229;
        Mon, 10 Aug 2020 10:26:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597080377; cv=none;
        d=google.com; s=arc-20160816;
        b=abzLGwDz9Sa6DJghaUayrsQmXs/1hslOTgDtgewMH9FBiNUaibeOrndcndUipXykK3
         0jpKyXFqCUC2VGb0IugiUWxWDLtuSMZsjiJrGIVotUMwamjxVvJiezUN+PP3wb0/MMrz
         uSxefEmapf1VsLgtFRddt8AR7NLFBFMbpqW0b65sWY9obMCcuWcJzJbKEsC8VjFEVeWi
         yA3Gm04Yj2mvcyWKmgJKJuG65/4A9SKTo+akNqiMZoE+rV3qAoIpI+rlYXVj2m/IS4pJ
         V2WLihXNNKBF1LpK1KVlP85MsKVK/KTQC3ONyLCc8N65yXRoeJ46kfd4xnHH8Fw8JqvT
         Bjww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=bsvGyaosl0mgqEYGhuF76iq838CtAa698gsKti+QCdk=;
        b=IBeevuMRZKNDazoRKbW8S1FcurLq86RzBoViPrbeE9e3+hH2slx4cJjbBB2D/YT7qF
         AEHxwNLqbTsGcsC9WvqrwAUg5AZ0YzROnI/gAygmXEwIWXiSuIiQFKwDpxZF5o75lvoD
         C9VriCqB1sLUkQnjbANOAztLnoQj6pbVPX/00jfyYcrw9Wvgqn91jasQV2UHourcXW9F
         YUOEyW8vmg4RhmeOgsl5tpcc43S1/hCSYhpBiNVx/2BRh8uJxEW5nPpyfO4N+sgDnuhX
         Wo/FW/DHAHziQwrst4s25FNs3drzxth1cfjv7Jgyu1/f5l3ukf60UnKa1UvgYiAA5lsh
         64Zg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id by18si6340076ejb.185.2020.08.10.10.26.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 10:26:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212])
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <colin.king@canonical.com>)
	id 1k5BYu-0006OL-Di; Mon, 10 Aug 2020 17:26:16 +0000
Subject: [usb-storage] Re: [PATCH] USB: storage: isd200: fix spelling mistake
 "removeable" -> "removable"
To: Joe Perches <joe@perches.com>, Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200810083211.48282-1-colin.king@canonical.com>
 <20200810142547.GC299045@rowland.harvard.edu>
 <ca88752c86bf8a42f9aa56b69df585542ea26622.camel@perches.com>
From: Colin Ian King <colin.king@canonical.com>
Autocrypt: addr=colin.king@canonical.com; prefer-encrypt=mutual; keydata=
 mQINBE6TJCgBEACo6nMNvy06zNKj5tiwDsXXS+LhT+LwtEsy9EnraKYXAf2xwazcICSjX06e
 fanlyhB0figzQO0n/tP7BcfMVNG7n1+DC71mSyRK1ZERcG1523ajvdZOxbBCTvTitYOy3bjs
 +LXKqeVMhK3mRvdTjjmVpWnWqJ1LL+Hn12ysDVVfkbtuIm2NoaSEC8Ae8LSSyCMecd22d9Pn
 LR4UeFgrWEkQsqROq6ZDJT9pBLGe1ZS0pVGhkRyBP9GP65oPev39SmfAx9R92SYJygCy0pPv
 BMWKvEZS/7bpetPNx6l2xu9UvwoeEbpzUvH26PHO3DDAv0ynJugPCoxlGPVf3zcfGQxy3oty
 dNTWkP6Wh3Q85m+AlifgKZudjZLrO6c+fAw/jFu1UMjNuyhgShtFU7NvEzL3RqzFf9O1qM2m
 uj83IeFQ1FZ65QAiCdTa3npz1vHc7N4uEQBUxyXgXfCI+A5yDnjHwzU0Y3RYS52TA3nfa08y
 LGPLTf5wyAREkFYou20vh5vRvPASoXx6auVf1MuxokDShVhxLpryBnlKCobs4voxN54BUO7m
 zuERXN8kadsxGFzItAyfKYzEiJrpUB1yhm78AecDyiPlMjl99xXk0zs9lcKriaByVUv/NsyJ
 FQj/kmdxox3XHi9K29kopFszm1tFiDwCFr/xumbZcMY17Yi2bQARAQABtCVDb2xpbiBLaW5n
 IDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+iQI2BBMBCAAhBQJOkyQoAhsDBQsJCAcDBRUK
 CQgLBRYCAwEAAh4BAheAAAoJEGjCh9/GqAImsBcP9i6C/qLewfi7iVcOwqF9avfGzOPf7CVr
 n8CayQnlWQPchmGKk6W2qgnWI2YLIkADh53TS0VeSQ7Tetj8f1gV75eP0Sr/oT/9ovn38QZ2
 vN8hpZp0GxOUrzkvvPjpH+zdmKSaUsHGp8idfPpZX7XeBO0yojAs669+3BrnBcU5wW45SjSV
 nfmVj1ZZj3/yBunb+hgNH1QRcm8ZPICpjvSsGFClTdB4xu2AR28eMiL/TTg9k8Gt72mOvhf0
 fS0/BUwcP8qp1TdgOFyiYpI8CGyzbfwwuGANPSupGaqtIRVf+/KaOdYUM3dx/wFozZb93Kws
 gXR4z6tyvYCkEg3x0Xl9BoUUyn9Jp5e6FOph2t7TgUvv9dgQOsZ+V9jFJplMhN1HPhuSnkvP
 5/PrX8hNOIYuT/o1AC7K5KXQmr6hkkxasjx16PnCPLpbCF5pFwcXc907eQ4+b/42k+7E3fDA
 Erm9blEPINtt2yG2UeqEkL+qoebjFJxY9d4r8PFbEUWMT+t3+dmhr/62NfZxrB0nTHxDVIia
 u8xM+23iDRsymnI1w0R78yaa0Eea3+f79QsoRW27Kvu191cU7QdW1eZm05wO8QUvdFagVVdW
 Zg2DE63Fiin1AkGpaeZG9Dw8HL3pJAJiDe0KOpuq9lndHoGHs3MSa3iyQqpQKzxM6sBXWGfk
 EkK5Ag0ETpMkKAEQAMX6HP5zSoXRHnwPCIzwz8+inMW7mJ60GmXSNTOCVoqExkopbuUCvinN
 4Tg+AnhnBB3R1KTHreFGoz3rcV7fmJeut6CWnBnGBtsaW5Emmh6gZbO5SlcTpl7QDacgIUuT
 v1pgewVHCcrKiX0zQDJkcK8FeLUcB2PXuJd6sJg39kgsPlI7R0OJCXnvT/VGnd3XPSXXoO4K
 cr5fcjsZPxn0HdYCvooJGI/Qau+imPHCSPhnX3WY/9q5/WqlY9cQA8tUC+7mgzt2VMjFft1h
 rp/CVybW6htm+a1d4MS4cndORsWBEetnC6HnQYwuC4bVCOEg9eXMTv88FCzOHnMbE+PxxHzW
 3Gzor/QYZGcis+EIiU6hNTwv4F6fFkXfW6611JwfDUQCAHoCxF3B13xr0BH5d2EcbNB6XyQb
 IGngwDvnTyKHQv34wE+4KtKxxyPBX36Z+xOzOttmiwiFWkFp4c2tQymHAV70dsZTBB5Lq06v
 6nJs601Qd6InlpTc2mjd5mRZUZ48/Y7i+vyuNVDXFkwhYDXzFRotO9VJqtXv8iqMtvS4xPPo
 2DtJx6qOyDE7gnfmk84IbyDLzlOZ3k0p7jorXEaw0bbPN9dDpw2Sh9TJAUZVssK119DJZXv5
 2BSc6c+GtMqkV8nmWdakunN7Qt/JbTcKlbH3HjIyXBy8gXDaEto5ABEBAAGJAh8EGAEIAAkF
 Ak6TJCgCGwwACgkQaMKH38aoAiZ4lg/+N2mkx5vsBmcsZVd3ys3sIsG18w6RcJZo5SGMxEBj
 t1UgyIXWI9lzpKCKIxKx0bskmEyMy4tPEDSRfZno/T7p1mU7hsM4owi/ic0aGBKP025Iok9G
 LKJcooP/A2c9dUV0FmygecRcbIAUaeJ27gotQkiJKbi0cl2gyTRlolKbC3R23K24LUhYfx4h
 pWj8CHoXEJrOdHO8Y0XH7059xzv5oxnXl2SD1dqA66INnX+vpW4TD2i+eQNPgfkECzKzGj+r
 KRfhdDZFBJj8/e131Y0t5cu+3Vok1FzBwgQqBnkA7dhBsQm3V0R8JTtMAqJGmyOcL+JCJAca
 3Yi81yLyhmYzcRASLvJmoPTsDp2kZOdGr05Dt8aGPRJL33Jm+igfd8EgcDYtG6+F8MCBOult
 TTAu+QAijRPZv1KhEJXwUSke9HZvzo1tNTlY3h6plBsBufELu0mnqQvHZmfa5Ay99dF+dL1H
 WNp62+mTeHsX6v9EACH4S+Cw9Q1qJElFEu9/1vFNBmGY2vDv14gU2xEiS2eIvKiYl/b5Y85Q
 QLOHWV8up73KK5Qq/6bm4BqVd1rKGI9un8kezUQNGBKre2KKs6wquH8oynDP/baoYxEGMXBg
 GF/qjOC6OY+U7kNUW3N/A7J3M2VdOTLu3hVTzJMZdlMmmsg74azvZDV75dUigqXcwjE=
Message-ID: <783b3e8a-40b1-379d-ae22-9b1fd9c50684@canonical.com>
Date: Mon, 10 Aug 2020 18:26:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <ca88752c86bf8a42f9aa56b69df585542ea26622.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of colin.king@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 10/08/2020 18:14, Joe Perches wrote:
> On Mon, 2020-08-10 at 10:25 -0400, Alan Stern wrote:
>> On Mon, Aug 10, 2020 at 09:32:11AM +0100, Colin King wrote:
>>> From: Colin Ian King <colin.king@canonical.com>
>>>
>>> There is a spelling mistake in a usb_stor_dbg debug message. Fix it.
> 
> This is an alternate spelling in a few dictionaries.
> Is this an acceptable Briticism?
> If so, I suggest no change.

I was keeping it consistent with all the other occurrences of this word
in kernel messages.

> 
>>> diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
> []
>>> @@ -1383,7 +1383,7 @@ static int isd200_scsi_to_ata(struct scsi_cmnd *srb, struct us_data *us,
>>>  				ATA_CMD_MEDIA_LOCK : ATA_CMD_MEDIA_UNLOCK;
>>>  			isd200_srb_set_bufflen(srb, 0);
>>>  		} else {
>>> -			usb_stor_dbg(us, "   Not removeable media, just report okay\n");
>>> +			usb_stor_dbg(us, "   Not removable media, just report okay\n");
>>>  			srb->result = SAM_STAT_GOOD;
>>>  			sendToTransport = 0;
>>>  		}
>>> -- 
>>
>> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/783b3e8a-40b1-379d-ae22-9b1fd9c50684%40canonical.com.
