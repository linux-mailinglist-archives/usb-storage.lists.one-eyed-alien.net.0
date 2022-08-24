Return-Path: <usb-storage+bncBC72LGEK34ERBZFIS6MAMGQEE43ULJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B1C59F46C
	for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 09:33:57 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id f11-20020a056214164b00b00496a9423091sf9075911qvw.14
        for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 00:33:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661326436; cv=pass;
        d=google.com; s=arc-20160816;
        b=P0GLJT2YD53gnkWcNFYQKRSxMdNsp3mhxSpQhXdxKoH2QuS+YtqcIutoaXPMqOLk0v
         +nadCNilLASoGH1+FFQzNTbP9P+CBlCOyGJDrMXF32znjtTmd9LTWb9pHeg3fWKBBVfe
         INeRez/IIOWuSzSWofbCLgp0/Kw24dAJG7UaFzFmV4xWGj+ytDunutW+Lcpr/FWvAZHg
         h7WtSnZSOqjieN/ghrCY/ebjBzO0gtMk9aPjd62RuxNNfQE9HP1qnpu2yV4yCuf/n4YL
         8CoE/c2d5yVc1hD4zyeOtNPsWjp/NhX/YGxxWkcTSkiT4VfjADt8YfzlMVmAFKkYPxfy
         zQsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KLnETnMPcCAwt2wOgkBqDG9JZPw1bDOA61n2IlOlyVs=;
        b=pg5FyKtmE1NA5ZaWmbFbmr62wAtkflqUa7/Sil1STRiVXdESvu6e08DB8npXw9176h
         0RsYyemuECiEnobql8XbSRav9NYTi3S/XJhmh8CSOtmJIgbGFlZOHo3Bi+Jfz9GH/shv
         7WDZ9B2BiqE/h4yX2MotAy0v36qoDPaAG5dz/0ivMqYGY0XHRpxzO3OpbrXQ9sWo3VXU
         b+rVni+7UWnAshdVFNSP21x+kCPlGATIXajgis5a13SKyicqr/yul2UYRiDh52ATAH7n
         hGZ0RDeee/17npOqJ2OQuPwU7YZ6luRK2JdD6d0NSu7wGxRzOT0bjJqZvCY9qnrFVis5
         VTVw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=jYimnwYe;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc;
        bh=KLnETnMPcCAwt2wOgkBqDG9JZPw1bDOA61n2IlOlyVs=;
        b=jLQApa2lb35JP2gNBUIbzXS0CKgYZbctSzOx8zK2+bVxtJy5G8vuNsRWdRBbbGyL/P
         C0woxzO7X6YhbEyIAttZFcRZRGtT8PrNsx3boPg/Rd7ibaKxbrwdoat9XhXq2/aOB2l/
         yFs/DZ49pFHvzqRnKJI7UnkjBr23jgkmrJJl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-message-state:sender:from:to:cc;
        bh=KLnETnMPcCAwt2wOgkBqDG9JZPw1bDOA61n2IlOlyVs=;
        b=a3ofSEEPZuYuIJgx3br3nkIXwyLRJfVU4tRgCQLkRVUvP8i9Ru8WXTz0n+c87WsppX
         QHaBsWSmvGO62QE0JjXMEA2B/kryA/7SB3sEWkfHuFhgndBMxAW04YuweyaRNyye8bv9
         /opdTa8GbwaTgVFZZwlLdZXOdLSHk02YbR24NC/ZAy1na4koE1xCWND6g14bYj730P5O
         rI/SdBJT5brvGtCkm6b8CzGgvGtmoBNNMWZszcT99NzcsvpHzDTzJbUFaZeXQwacR6fw
         x77Xl2mTboNLdTbQGM44EWr0Qj/ij3gnp5KqNRyJYpyu3futGWaAXzrLIW7xuRk1RdpD
         dBSQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1O/Eh5gIUw0Mpz08gUEUEzEU4ezwe9kUgA9hO8oNuhBWolEt1d
	ejWWBXctquovsX+8h+TKK3Tk9w==
X-Google-Smtp-Source: AA6agR6YmJ/kIxZoEe6Fu2SAhQvvVFVT2nhVp8ZZgwndYo7AkhubI3vW1dLD1MGlQuRdFZSdgwVnzw==
X-Received: by 2002:ad4:5bc3:0:b0:482:5a89:c107 with SMTP id t3-20020ad45bc3000000b004825a89c107mr23237457qvt.84.1661326436188;
        Wed, 24 Aug 2022 00:33:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:1456:b0:6bb:13a4:5c25 with SMTP id
 i22-20020a05620a145600b006bb13a45c25ls9778323qkl.4.-pod-prod-gmail; Wed, 24
 Aug 2022 00:33:55 -0700 (PDT)
X-Received: by 2002:ae9:f705:0:b0:6b9:7151:d263 with SMTP id s5-20020ae9f705000000b006b97151d263mr18115822qkg.206.1661326435741;
        Wed, 24 Aug 2022 00:33:55 -0700 (PDT)
Received: by 2002:a05:620a:3185:b0:6af:32d6:6d97 with SMTP id af79cd13be357-6bc3e44c61ams85a;
        Tue, 23 Aug 2022 23:37:07 -0700 (PDT)
X-Received: by 2002:a67:fc90:0:b0:390:637e:5511 with SMTP id x16-20020a67fc90000000b00390637e5511mr5011530vsp.47.1661323026586;
        Tue, 23 Aug 2022 23:37:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661323026; cv=none;
        d=google.com; s=arc-20160816;
        b=ka3DGCJd6S5Up7urb2SChQUR/rYDm4ydYjTvwvKfIWSEL9Shn9GdHq2DwUDGZydZm2
         ek4PQZ49ImBRCzUB1Ln7CK8WsxvOFRDJfeYG/E4goxXIlPT4eUivhoe3AtZAFNMzgfGS
         I2HJ7gkrVwREkX0QXONQ1zuCWqozCU+UmESCIzYD+eggYx2F2v1vLJ1kPnpY/G5Xgqtg
         URxK7N8aumFd0V3NGiaQe3FeiqyWc+ejTyq5e8jxen+eF1ntVTuIz4YizGMkmRRoD1iG
         hlZk/mbkGtb/WEqhj0T+wOKrK+hN1n0reERGpcoL6+Wi4DhXu4yj5saqnNaxUXslZ+Tv
         /FNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oEbgpqKVGIqIxro+ookk/4iAvjswoYS3GHgu0T6AW2I=;
        b=gQgIAQsqNrBm33Kl2m5j7BorcD+9PR2TgB26LG8phSQ9cF6Lp4FaxiuEtkEloGTsew
         t8CYD0xcCrTKmF3tTkNxpgCBRkv8/zpzKW7ikCYa3Zwg/wwyCOqR04+K8U1dJEAzOPbw
         WVMvVPs1PJQSAR/GXkfAQV0rEDld4/wUY2fxct86zmOMnNbr8sV915VfdrBFBLSIUsL+
         HEszsSuad4KDkFkoov4dgyWEoc/dnAaSMn1U0Q/DEkByLeyLtCP4Zb3yvINDb112hYAV
         6pYptfSsBKGde5B+mHuB5ZFpu66YxqzilDEJA6KQZR3wj1Gk5+3JA21LpQrYW3I2Axm5
         qYwQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=jYimnwYe;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id m12-20020a0561023e8c00b0038ad4743040sor5495170vsv.98.2022.08.23.23.37.06
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 23 Aug 2022 23:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a67:d60f:0:b0:390:1d18:289 with SMTP id
 n15-20020a67d60f000000b003901d180289mr10194718vsj.62.1661323026217; Tue, 23
 Aug 2022 23:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <S240916AbiHWHMh/20220823071237Z+20120@vger.kernel.org> <CABd4Uja9SoHpiMr2gDFcEP2Cudp7dcWJ_2i+KTEse9CU=KMtzw@mail.gmail.com>
In-Reply-To: <CABd4Uja9SoHpiMr2gDFcEP2Cudp7dcWJ_2i+KTEse9CU=KMtzw@mail.gmail.com>
From: Hu Xiaoying <huxiaoying2008@gmail.com>
Date: Wed, 24 Aug 2022 14:36:55 +0800
Message-ID: <CABd4UjYB=nzha=eoogNJU4pFwW9+4PQ65bC5u=R-gCE_ZLSQXw@mail.gmail.com>
Subject: [usb-storage] Re: Confirmation for subscribe linux-usb
To: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org, 
	gregkh@linuxfoundation.org, stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000d61c1605e6f6e89e"
X-Original-Sender: huxiaoying2008@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=jYimnwYe;       spf=pass
 (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000d61c1605e6f6e89e
Content-Type: multipart/alternative; boundary="000000000000d61c1405e6f6e89c"

--000000000000d61c1405e6f6e89c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

submit patch

Hu Xiaoying <huxiaoying2008@gmail.com> =E4=BA=8E2022=E5=B9=B48=E6=9C=8823=
=E6=97=A5=E5=91=A8=E4=BA=8C 15:43=E5=86=99=E9=81=93=EF=BC=9A

>   auth 7333f35e subscribe linux-usb huxiaoying2008@gmail.com
>
> <Majordomo@vger.kernel.org> =E4=BA=8E2022=E5=B9=B48=E6=9C=8823=E6=97=A5=
=E5=91=A8=E4=BA=8C 15:21=E5=86=99=E9=81=93=EF=BC=9A
>
>> --
>>
>> Someone (possibly you) has requested that your email address be added
>> to or deleted from the mailing list "linux-usb@vger.kernel.org".
>>
>> If you really want this action to be taken, please send the following
>> commands (exactly as shown) back to "Majordomo@vger.kernel.org":
>>
>>         auth 7333f35e subscribe linux-usb huxiaoying2008@gmail.com
>>
>> If you do not want this action to be taken, simply ignore this message
>> and the request will be disregarded.
>>
>> If your mailer will not allow you to send the entire command as a single
>> line, you may split it using backslashes, like so:
>>
>>         auth 7333f35e subscribe linux-usb \
>>         huxiaoying2008@gmail.com
>>
>> If you have any questions about the policy of the list owner, please
>> contact "linux-usb-approval@vger.kernel.org".
>>
>> Thanks!
>>
>> Majordomo@vger.kernel.org
>>
>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CABd4UjYB%3Dnzha%3DeoogNJU4pFwW9%2B4=
PQ65bC5u%3DR-gCE_ZLSQXw%40mail.gmail.com.

--000000000000d61c1405e6f6e89c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">submit patch</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Hu Xiaoying &lt;<a href=3D"mailto:huxiaoying2=
008@gmail.com">huxiaoying2008@gmail.com</a>&gt; =E4=BA=8E2022=E5=B9=B48=E6=
=9C=8823=E6=97=A5=E5=91=A8=E4=BA=8C 15:43=E5=86=99=E9=81=93=EF=BC=9A<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=C2=
=A0 auth 7333f35e subscribe linux-usb=C2=A0<a href=3D"mailto:huxiaoying2008=
@gmail.com" target=3D"_blank">huxiaoying2008@gmail.com</a><br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">&lt;<a href=
=3D"mailto:Majordomo@vger.kernel.org" target=3D"_blank">Majordomo@vger.kern=
el.org</a>&gt; =E4=BA=8E2022=E5=B9=B48=E6=9C=8823=E6=97=A5=E5=91=A8=E4=BA=
=8C 15:21=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">--<br>
<br>
Someone (possibly you) has requested that your email address be added<br>
to or deleted from the mailing list &quot;<a href=3D"mailto:linux-usb@vger.=
kernel.org" target=3D"_blank">linux-usb@vger.kernel.org</a>&quot;.<br>
<br>
If you really want this action to be taken, please send the following<br>
commands (exactly as shown) back to &quot;<a href=3D"mailto:Majordomo@vger.=
kernel.org" target=3D"_blank">Majordomo@vger.kernel.org</a>&quot;:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 auth 7333f35e subscribe linux-usb <a href=3D"ma=
ilto:huxiaoying2008@gmail.com" target=3D"_blank">huxiaoying2008@gmail.com</=
a><br>
<br>
If you do not want this action to be taken, simply ignore this message<br>
and the request will be disregarded.<br>
<br>
If your mailer will not allow you to send the entire command as a single<br=
>
line, you may split it using backslashes, like so:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 auth 7333f35e subscribe linux-usb \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:huxiaoying2008@gmail.com" tar=
get=3D"_blank">huxiaoying2008@gmail.com</a><br>
<br>
If you have any questions about the policy of the list owner, please<br>
contact &quot;<a href=3D"mailto:linux-usb-approval@vger.kernel.org" target=
=3D"_blank">linux-usb-approval@vger.kernel.org</a>&quot;.<br>
<br>
Thanks!<br>
<br>
<a href=3D"mailto:Majordomo@vger.kernel.org" target=3D"_blank">Majordomo@vg=
er.kernel.org</a><br>
</blockquote></div>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjYB%3Dnzha%3DeoogNJ=
U4pFwW9%2B4PQ65bC5u%3DR-gCE_ZLSQXw%40mail.gmail.com?utm_medium=3Demail&utm_=
source=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msg=
id/usb-storage/CABd4UjYB%3Dnzha%3DeoogNJU4pFwW9%2B4PQ65bC5u%3DR-gCE_ZLSQXw%=
40mail.gmail.com</a>.<br />

--000000000000d61c1405e6f6e89c--
--000000000000d61c1605e6f6e89e
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-KYLIN-usb-Improves-USB2.0-write-performance-for-Exte.patch"
Content-Disposition: attachment; 
	filename="0001-KYLIN-usb-Improves-USB2.0-write-performance-for-Exte.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_l778soka0>
X-Attachment-Id: f_l778soka0

RnJvbSAwNDBlN2VkN2U2ZTllZDg1MDU3NWVkMDc1ZTAyZDk2MGE1ZmZlMTkxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBIdSBYaWFveWluZyA8aHV4aWFveWluZ0BreWxpbm9zLmNuPgpE
YXRlOiBXZWQsIDIyIEp1biAyMDIyIDE2OjM1OjU5ICswODAwClN1YmplY3Q6IFtQQVRDSCAtbmV4
dF0gS1lMSU46IHVzYjogSW1wcm92ZXMgVVNCMi4wIHdyaXRlIHBlcmZvcm1hbmNlIGZvcgogRXh0
ZXJuYWwgSEREIGRldmljZSAoVklEOlBJRCA9IDB4MGIwNToweDE5MzIpCgpDVkU6IE5BCgpVU0Ig
ZXh0ZXJuYWwgc3RvcmFnZSBkZXZpY2UoMHgwYjA1OjE5MzIpLCB1c2UgZ25vbWUtZGlzay11dGls
aXR5IHRvb2xzCnRvIHRlc3QgdXNiIHdyaXRlICA8IDMwTUIvcy4KdGhlbiwgaWdvbmVkIHRvIGxv
YWQgbW9kdWxlIG9mIHVhcyBmb3IgdGhpcyBkZXZpY2UuCj09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09CldyaXRlIHNwZWVkOiBJbXByb3ZlcyBmb3JtIDI3TUIv
cyB0byA0ME1CL3MrCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBI
dSBYaWFveWluZyA8aHV4aWFveWluZzIwMDhAZ21haWwuY24+Ci0tLQogZHJpdmVycy91c2Ivc3Rv
cmFnZS91bnVzdWFsX3Vhcy5oIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oIGIv
ZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oCmluZGV4IDQwNTFjOGNkMGNkOC4uYWJh
ZjRlYTgxMzhiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi9zdG9yYWdlL3VudXN1YWxfdWFzLmgK
KysrIGIvZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oCkBAIC0xNTcsMyArMTU3LDEw
IEBAIFVOVVNVQUxfREVWKDB4NDk3MSwgMHg4MDI0LCAweDAwMDAsIDB4OTk5OSwKIAkJIkV4dGVy
bmFsIEhERCIsCiAJCVVTQl9TQ19ERVZJQ0UsIFVTQl9QUl9ERVZJQ0UsIE5VTEwsCiAJCVVTX0ZM
X0FMV0FZU19TWU5DKSwKKworLyogUmVwb3J0ZWQtYnk6IFRvbSBIdSA8aHV4aWFveWluZ0BreWxp
bm9zLmNuPiAqLworVU5VU1VBTF9ERVYoMHgwYjA1LCAweDE5MzIsIDB4MDAwMCwgMHg5OTk5LAor
CQkiQVNVUyIsCisJCSJFeHRlcm5hbCBIREQiLAorCQlVU0JfU0NfREVWSUNFLCBVU0JfUFJfREVW
SUNFLCBOVUxMLAorCQlVU19GTF9JR05PUkVfVUFTKSwKLS0gCjIuMjUuMQoK
--000000000000d61c1605e6f6e89e--
