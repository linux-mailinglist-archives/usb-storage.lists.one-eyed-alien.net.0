Return-Path: <usb-storage+bncBC35DGF52MIRBH4FW6ZAMGQESXW27OY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2A38CBEDB
	for <lists+usb-storage@lfdr.de>; Wed, 22 May 2024 12:02:09 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5b2b8c184efsf10342531eaf.3
        for <lists+usb-storage@lfdr.de>; Wed, 22 May 2024 03:02:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716372128; cv=pass;
        d=google.com; s=arc-20160816;
        b=m9hUelQVt0cYY+QbBxJsAYQF0Y4Ei7x5KvM1vnmHwQkz5IHtuNSWN1TDY0IanFIqYd
         7uetDVvT3IlA+gIz1QBLbtpN564ltP1bkc7RQEwHxl97PDJLy6v5hfTqdj9rILEnL3/4
         oRITF68EM6tWkXbB2IMctmLoGl1IjFqugwXO8ywGLSMQ2bp+8I1g9f1yv2M6ioQZzRHe
         uF8pKupj92n7oc4bJpt+uItMXls1lRJynmiHbSZxQZgwy4COE7q7QkBLWkMF0QFAmidi
         /37p2H3w3+zrGzd88pzuniZkJoKQ9QeIMdYUKqmrFcVwmkwq9cY7ySksow1B4gljJhLT
         Gm0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NOEYNC7v8pzwog7M10C3G73fLGgA7E3BXTvu+kPLX3w=;
        fh=OHE0vIREUR+USCpIYjcCCcSSiyGDzB98Sy8ECt/XWMU=;
        b=KXeHN8ZnImtiY0Q7UJ375YD/mv9Lg8KX9doveNJxCX4ZATtJ1X4hN9yqhuQp/NRlqc
         3NQIn0wysN5jY8acVQMf5d++EKCOVU1lRtPWnTf45UBJt+ICOrwCkyEFalgEmRE5ruPt
         lUi3ryPhLgnk53SKAvgNGGOZYNCbH7pVsAVmC3G33aZrqQ2rZzj4RQsNDRS501jIPeXq
         A1+OullMp+q+gYgYiJlM8O4ATktmgfuhoWhM2p1dxlXu7fkwTIFdfXzQaz2S5jtljhOp
         bDIgAnGNMKuuHnPSmov2SmHa5LQ0xbz7KOB7eer96U5CoMXG/hb6+d+v/qlCZGvRQiK0
         SYLQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=DHksQLa5;
       spf=pass (google.com: domain of phyhac@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=phyhac@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716372128; x=1716976928; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NOEYNC7v8pzwog7M10C3G73fLGgA7E3BXTvu+kPLX3w=;
        b=W8meRGkuwkTmj0znSPwyvUO8KnLLkpPvGySTetO03mYkt9WBJNVOe4/FZeJXJ7oNGL
         1UU1/d0QEMMyy5CDQE5T4k0aVYMiM19q1/I1NFKEoTsL7vv7wv4F4D+ohHYQf7Hel2n3
         2aa1iIBbdnxd9W3WfdkGYN/I/i6NgEL+WP1zo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716372128; x=1716976928;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NOEYNC7v8pzwog7M10C3G73fLGgA7E3BXTvu+kPLX3w=;
        b=VOScyL734c5PfqRb54dRozQ9UlazGKC/nuN/uTELsn76UYohdcNRLWg7pczcmADjE4
         uwcuwar9Q09+HlAbecoS9iw6tsdQRpFvLD/PuKvdE7D9ewlv8U6URAb0E0kNuZGfc6Is
         5SeACC6jyrME5sI2ydG2yk+JpZJcaPhm+GI9ggrKAEFsfYk5GUYjo36CGOHQ3RIKp96N
         6hX5yRszDykrxSgdt9r2sACQRDnAKDV+NiaLIY5nHcf7/LrK1IrxLAnkiIHH8nNEyLrw
         ZM+Udt/t4T4Z7H1r5JsfGddDNGUrX7mCUZX6MQrJC4duQ5e79FrLBxem7MrcmI99JFCq
         sVMg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXpvPlEN++jbuw/bG6gOGqbSWBgGXmeIBD06xL1vnjNFFGwWuoe8HIKyFO5ItLWHguOu+psMKUkNjSEn1hjz5xNELcrmG3Tf9pR
X-Gm-Message-State: AOJu0YxTXJt5JG9RzJSWTU68aF+zg/nWOWXpD4pAPpyKy0ik0UkpxrYN
	fhL7ezPEPcBHDuwSDH0vcDT0agNWTsO7Du2AD8VMkoXi7EOGTynkqhI6WgS0d4M=
X-Google-Smtp-Source: AGHT+IF4fCLGIJDXoMkGayA24JCLeO0GmOa8yUKMzLvxaUnKajyL+83ZduGiuBfuOCMRX5dmkkoRQw==
X-Received: by 2002:a05:6820:2585:b0:5b5:3df2:326e with SMTP id 006d021491bc7-5b6a4d681a6mr1570179eaf.9.1716372128010;
        Wed, 22 May 2024 03:02:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:8c69:0:b0:5b2:74a6:ea02 with SMTP id 006d021491bc7-5b274a6ec57ls784962eaf.2.-pod-prod-08-us;
 Wed, 22 May 2024 03:02:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUQwF1IbK1mCRd/EzHImruRtmwK0Y/gf0hh3eYlb7QcjBO6srgFP+jJXy8Egk0kWKnkdtcL+eAIQcak4qJG5BVIpF4/7PBWbNrlXaOyucdDr5H93rY=
X-Received: by 2002:a05:6820:22a1:b0:5ac:9f7d:3b3f with SMTP id 006d021491bc7-5b6a13092bdmr2183461eaf.3.1716372127141;
        Wed, 22 May 2024 03:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716372127; cv=none;
        d=google.com; s=arc-20160816;
        b=L8gOmuHhsAI3w9XiJK9yN50FDIYgVW9oqo+BjE6Y5U4IirIJJYFFJh08U2LF10rTVB
         NqwBELcu3lAawGjB3gGoOIEdWGKwsZtWhJiILQPpCeA5woWWdP20mOI2d9a64U/4C8u9
         6koeqNFRtGmV+MG1dU+7fyabgICOX9ie+ijKaPooLBR8KFFoTe1f2Bt1N7dlbcrqHjyL
         6QDshMeUqTle797xFfT7yr1ydbJl1tj3I1bnhWSCKeYWntW2zk2Pnbzz5LhjcsY/WyMc
         4R5cWSDntSmM+jyE9K49YKG0NWoboyVs0c1fgvh1d1mhEReKQtFwSyLwILnHnND6mOJb
         UXhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=F5k3RwCdEmj6HwoKchA8XU9V0pqcQYkueptQrHnSt1o=;
        fh=VzEL927m0O694RA3pc1tl/dnjiW1ot5E17BR4WKs49g=;
        b=AlVg+sjEGcuw4o30U+MSun9kiI3j0igudBDo0M0qaptYrOhGKj3S/V+BewRhECvMUV
         WEv/bhOtQi/szoxAWwUqwlSSyEx+troshCfzmbp9YQTpxZTQYSa5JkYzLcewj2yx4rG3
         EkzdvZGzarCzTPYJ0OCbxViPu8J8OC63LuF7obph6v9kOZ3day1Xs6WJR/7W3zjRsnaC
         iIRti7lAre9yuI5pJ94tTiE+b9D0NRWTiqNDKhKHcNAlOgE2rADczDxWlC+eFjWBTLYW
         dOo7m6vDH7HqfPiXzILs6lR+bdVtXZ6tONaRNfbSukbAgqdP1ObnvPdlwsW/Crd2yHqy
         YNaw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=DHksQLa5;
       spf=pass (google.com: domain of phyhac@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=phyhac@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id 006d021491bc7-5b3308015a2sor2451720eaf.3.2024.05.22.03.02.07
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 22 May 2024 03:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of phyhac@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Forwarded-Encrypted: i=1; AJvYcCXlODVetUZLSOm4gxwE9a5OhZviRi/7J5nQXSwr6lQIh0KKDM4LLNW0RagR5I3U7Z3rE6QR/ZjC3nIkcKXXHNO2EB6MSch/lrIV/3MVfsHNktBOias=
X-Received: by 2002:a05:6820:22a1:b0:5ac:9f7d:3b3f with SMTP id
 006d021491bc7-5b6a13092bdmr2183435eaf.3.1716372126739; Wed, 22 May 2024
 03:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAEk6kZszgHVYN8r-AsPw9YtGGf459j0uDMYLdOoTixhE3YJCKw@mail.gmail.com>
 <2024052224-motion-perish-82cd@gregkh> <CAEk6kZt4qcV0xUxHFRp3DTdZ0f_3fLE0q4e_AWHGyjba=19g9g@mail.gmail.com>
 <CAEk6kZsgEJNSmFFe-tdA+RhM=+Pjm=JvHiNJ4QjZONPXHt-gjw@mail.gmail.com> <2024052242-hunter-exception-930c@gregkh>
In-Reply-To: <2024052242-hunter-exception-930c@gregkh>
From: Shichao Lai <phyhac@gmail.com>
Date: Wed, 22 May 2024 18:01:57 +0800
Message-ID: <CAEk6kZsLqJ5RbWYMrcbB+LkRq8jzRgTm3F8kq8FKB14y8ST2GQ@mail.gmail.com>
Subject: [usb-storage] Re: divide error in alauda_transport
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alan Stern <stern@rowland.harvard.edu>, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org, syzkaller@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000eab62206190806f8"
X-Original-Sender: phyhac@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=DHksQLa5;       spf=pass
 (google.com: domain of phyhac@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=phyhac@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000eab62206190806f8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your patience. I am a beginner and initially attempted to report
errors to the community.
However, I have just discovered that the issue mentioned above has already
been proposed in the previous three months of the article, and there is an
ongoing discussion.

I think this post can be closed later.

https://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ/m/JfUy1xGnAwAJ

Greg Kroah-Hartman <gregkh@linuxfoundation.org> =E4=BA=8E2024=E5=B9=B45=E6=
=9C=8822=E6=97=A5=E5=91=A8=E4=B8=89 16:59=E5=86=99=E9=81=93=EF=BC=9A

> On Wed, May 22, 2024 at 04:22:18PM +0800, Shichao Lai wrote:
> > patch like this:
> > ```c
> > while (sectors > 0) {
> >     if (!uzonesize) {
> >         return USB_STOR_TRANSPORT_ERROR;
> >     }
> >     unsigned int zone =3D lba / uzonesize; /* integer division */
> >     unsigned int lba_offset =3D lba - (zone * uzonesize);
> >     unsigned int pages;
> > ```
>
> Please submit this properly and we will be glad to review it.
>
> thanks,
>
> greg k-h
>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAEk6kZsLqJ5RbWYMrcbB%2BLkRq8jzRgTm3=
F8kq8FKB14y8ST2GQ%40mail.gmail.com.

--000000000000eab62206190806f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"color:rgba(0,0,0,0.87);font-family:Roboto,Ro=
botoDraft,Helvetica,Arial,sans-serif;font-size:14px">Thanks for your patien=
ce. I am a beginner and initially attempted to report errors to the communi=
ty.=C2=A0</div><div style=3D"color:rgba(0,0,0,0.87);font-family:Roboto,Robo=
toDraft,Helvetica,Arial,sans-serif;font-size:14px">However, I have just dis=
covered that the issue mentioned above has already been proposed in the pre=
vious three months of the article, and there is an ongoing discussion.=C2=
=A0</div><div style=3D"color:rgba(0,0,0,0.87);font-family:Roboto,RobotoDraf=
t,Helvetica,Arial,sans-serif;font-size:14px"><br></div><div style=3D"color:=
rgba(0,0,0,0.87);font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;=
font-size:14px">I think this post can be closed later.=C2=A0</div><div styl=
e=3D"color:rgba(0,0,0,0.87);font-family:Roboto,RobotoDraft,Helvetica,Arial,=
sans-serif;font-size:14px"><br></div><div style=3D"color:rgba(0,0,0,0.87);f=
ont-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:14px"><a=
 href=3D"https://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ/m/JfUy1xG=
nAwAJ" target=3D"_blank" rel=3D"nofollow" style=3D"text-decoration-line:non=
e;color:rgb(26,115,232)">https://groups.google.com/g/syzkaller-bugs/c/m8Cux=
SpLKoQ/m/JfUy1xGnAwAJ</a>=C2=A0</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">Greg Kroah-Hartman &lt;<a href=3D"mail=
to:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; =E4=BA=8E=
2024=E5=B9=B45=E6=9C=8822=E6=97=A5=E5=91=A8=E4=B8=89 16:59=E5=86=99=E9=81=
=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On =
Wed, May 22, 2024 at 04:22:18PM +0800, Shichao Lai wrote:<br>
&gt; patch like this:<br>
&gt; ```c<br>
&gt; while (sectors &gt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0if (!uzonesize) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return USB_STOR_TRANSPORT_ERROR;<br>
&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0unsigned int zone =3D lba / uzonesize; /* integer d=
ivision */<br>
&gt;=C2=A0 =C2=A0 =C2=A0unsigned int lba_offset =3D lba - (zone * uzonesize=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0unsigned int pages;<br>
&gt; ```<br>
<br>
Please submit this properly and we will be glad to review it.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAEk6kZsLqJ5RbWYMrcbB%2BL=
kRq8jzRgTm3F8kq8FKB14y8ST2GQ%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CAEk6kZsLqJ5RbWYMrcbB%2BLkRq8jzRgTm3F8kq8FKB14y8ST2GQ%40mail.gmail=
.com</a>.<br />

--000000000000eab62206190806f8--
