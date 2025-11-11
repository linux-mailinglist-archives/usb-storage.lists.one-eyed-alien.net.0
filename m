Return-Path: <usb-storage+bncBCG7HAM3UIHRBK4CZTEAMGQEIQ64E2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 129C5C4CA39
	for <lists+usb-storage@lfdr.de>; Tue, 11 Nov 2025 10:26:06 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-7c2845fb2e7sf7464703a34.2
        for <lists+usb-storage@lfdr.de>; Tue, 11 Nov 2025 01:26:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762853164; cv=pass;
        d=google.com; s=arc-20240605;
        b=AwbJqDl0uVoPg1LqFi+Oxm0qffcDJuQ6UClx/dA70SA1uhoYOZq8pak6tQO3s8eYoW
         5QvhPzn47fmt7dfum0wg/UeEH69WVc9QMm5JIv/Ljv/BIrLlc3bWDScJrcNDYWMnENx4
         MjMHhC9zLoIC021rFQ3/xnOTX8gOTviP/yunySlpFE+sBDYcDubsTx/bnMKXcXhtCeOm
         x3E0H7R5UEu93hbUMEm4m2EQnh/UrkoG7uZSAr7/pgxwienlUMebSC3blqPWTs7yGRw2
         ATTs073gI8+GpciowewAqd8VmGyLg65ibQFqBPzxZV4GeSxtpSHc/1fyQk0oYaRqHke3
         lR2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent
         :content-transfer-encoding:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=l5U1EWXy0qQNO5FC9P0UxFX51v8jdhd/uWdHPqHwBNE=;
        fh=UvZ9ex9KMrJDyFWhvfOhR5WNaX5p/VWA9XhYc4YjXjE=;
        b=ShOk+Pz+qXhwqztalYWyZgU8BcKg56UFM1b8krSmPpSDU2bJbXiuK3iGpcw1P6HH8u
         o7nua/1gDgJjmvk60q952XI0HrTHW4E67HwzYZIUD5JZ4zKQ5jcLm7qULby1YpL7KqXT
         rXAXEKL3SJZEUusfEp87KIKmhBuAByd3t/HSJCZIYDK7M2xkfEJ4tsOy4bsC+HuaZUJK
         HVIqq0BmM6KkDbSNDgZjOFb7enDDrXo193FNPJNjuEtjKKWzW7PCXITIlvpL7AvLX7ru
         +FXwbLqyOBwbEe7woPPDdY1Z+hVqO9Ets7zzXJOzh68FmG5D+aAyoKPsNYQEw2dxX3c9
         VeiA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@improbability.net header.s=default header.b=henWl7qQ;
       spf=pass (google.com: domain of reiver@improbability.net designates 185.201.17.60 as permitted sender) smtp.mailfrom=reiver@improbability.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762853164; x=1763457964; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:user-agent:content-transfer-encoding
         :references:in-reply-to:date:cc:to:from:subject:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l5U1EWXy0qQNO5FC9P0UxFX51v8jdhd/uWdHPqHwBNE=;
        b=KxMlwqV1zxTq0mtfMDKr48t1He/rOB7nvQUTigZgWISsGcv+17McRr+XRrnaH6nn9J
         UyQXm/62IDn8pDEAy9EF7EjBVUh4WZBI0oFYiwVib+9pwaEWY1ULPuHzwti/swV5IYET
         fWMrZIKPR/67/IshBUVmSZ4xv1GuXIL1WWJn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762853164; x=1763457964;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:user-agent:content-transfer-encoding
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l5U1EWXy0qQNO5FC9P0UxFX51v8jdhd/uWdHPqHwBNE=;
        b=mI4hZWbVLlNoSGeS6Ninp7nyu0gFLMZuYyeEP/p+CmZErWpXcYwfIcv2ziX4vqORu9
         +OY1w0wCydyAG8U8TSJZMXKe/gEP1Z/yCLLBishQZGtmr+CuMZVcaTY3IKRMSp9FcYFD
         A2jKlyaB2/3QM1jSMPeh3ECAVPOpsN7Sd/PzH7mrJIHhAMn8A3ZvryYYBAPDPng48hEh
         4+lKYHOU1MdSJrG9M0GXQEwVet+BM5slmeQnKuwzvdQ+CyNYjcBdiKHG9RJTMlobXAab
         lC/ud4iYlzhxfzGFzFuW5mHPeatW/E/aMhaX9Bdf5R3HMEEXnRv8KtUp+8TIhkVA/s+0
         OLmw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWih1lM/HkaVgVu01X2/7FfOgdp54bNLJRFy7APSuFBor8C7iWbBsILOyk9+V7CzmkoA7/rVg==@lfdr.de
X-Gm-Message-State: AOJu0YwMtW2VhxYb4at9wp6YL5n2/QPdpx3kawVKKzoiJ1CkxxP14UAI
	VzDzfH4E56htlpXksAPiw89VHEaTOQSwkvPlLW8ioI+y8nkzekb88eO2/77k/LIGUok=
X-Google-Smtp-Source: AGHT+IFR0HcaZHXEYkv7VncZcMGKTtFo2dOPUcCgnp7V5dXQJvD3dB9qJeVnvjnXXtkZbMgiUWqLww==
X-Received: by 2002:a05:6808:191c:b0:450:4628:e3ef with SMTP id 5614622812f47-4504628f03emr3679797b6e.16.1762853164097;
        Tue, 11 Nov 2025 01:26:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+b8urEKgMDe07DxEvvq2PKk/uhqT+YfUfpn4nEdxfMsjQ=="
Received: by 2002:a05:6871:241b:b0:3d5:54c4:3245 with SMTP id
 586e51a60fabf-3e2f5274de6ls3738138fac.2.-pod-prod-01-us; Tue, 11 Nov 2025
 01:26:03 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVZNKes6Z8r4yW12Y98Kx7/Jd1hLuobaGlwo7oqeVGmWLyWx/gNkHZ4nB3BCOQzgCjgFrt/50KZBWMdXw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1513:b0:450:1d1a:5d92 with SMTP id 5614622812f47-4502a2a91c8mr5306081b6e.26.1762853163482;
        Tue, 11 Nov 2025 01:26:03 -0800 (PST)
Received: by 2002:a05:600d:7:b0:477:563b:1ae3 with SMTP id 5b1f17b1804b1-4775d0b4424ms5e9;
        Tue, 11 Nov 2025 01:17:19 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWflqn7qfcfT5r4ZKKgW9SONYHoX2U1xUZr1wLu1EPDQ/bt6waEj8v9HYi1B5l2pJ3tQtwd1ASkplHBQg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:1a8b:b0:429:c709:7b58 with SMTP id ffacd0b85a97d-42b2dcc1062mr8865070f8f.50.1762852637707;
        Tue, 11 Nov 2025 01:17:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762852637; cv=none;
        d=google.com; s=arc-20240605;
        b=IGhHiqpQHsqSOxRy/+8Py/OcEdct8NiTuISuumAqsJNgHMXPhtkF716tHN6CiYQ9iq
         iW1hMT3fL8xQ2ZjAz7Y9ZKo4Stg4EwOpkaOpMQjf6Txa+KYaDu3K1V8MINf1xGwiYy1Q
         xndf49Vlgc85j4szR5Iqogx1jZyNpIlqDx74f5MVF/7cHFEerhlVf5xy/QrUnWMCSU2n
         RYT66DeLpwYJUYFsyr4WyCnWIoMcIqnLAoe6LejuJLqC0yq/k0T8XxIaMkCwYWbC/8Ed
         eha6GYpqeI+QsXlHbhr+huR0MBmxKaZUYxQ3mHw67KjAscnLU2h4O3MIOd8myiUkqsNX
         UNCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=qxfEH7hPGa+On03jIM0VIes3D4OUHi4QJqrLF/L7BCg=;
        fh=GfGkKjhAzTV2d4mq628P5M89eMyk3s2q/f8noXSWyHs=;
        b=Ss7Cjbw0HfCaKzN0eP/pargOFkQ6yNc2HjEpbnEgsj783zrC6EIznfUxLEMIQO9OiS
         qLysBiNQYLzb5G2dtVjUXfG3n6yEIWIY70lYO4zBtTA5+kMQPPEjCgg8eafgkcyKSEan
         /MQESXraQjAFswodmRaz1uaBpgIMDlfP6vGZWOUXiQeh/atTtYajs+/FoowwcWdo9PE7
         cTWnLbGomQt1OQs5BJ9NbYeyQazPpUa2IzbFefN5DBA7yR5SPrMwsCZ1MbnKU+P+xpWD
         fv3HnMIpIFDOxnGEqn62pW41PEaa3E6LfmAxt1H+ERYfAOcbgwkPeM0QNPIfGA58EZbV
         VRxg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@improbability.net header.s=default header.b=henWl7qQ;
       spf=pass (google.com: domain of reiver@improbability.net designates 185.201.17.60 as permitted sender) smtp.mailfrom=reiver@improbability.net
Received: from out13-60.antispamcloud.com (out13-60.antispamcloud.com. [185.201.17.60])
        by mx.google.com with ESMTPS id ffacd0b85a97d-42b2e033f2fsi5321334f8f.765.2025.11.11.01.17.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 01:17:17 -0800 (PST)
Received-SPF: pass (google.com: domain of reiver@improbability.net designates 185.201.17.60 as permitted sender) client-ip=185.201.17.60;
Received: from s1234.lon1.mysecurecloudhost.com ([192.250.239.241])
	by mx323.antispamcloud.com with esmtps  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <reiver@improbability.net>)
	id 1vIkUo-00HChG-Bb; Tue, 11 Nov 2025 10:17:09 +0100
Received: from slartibartfast.improbability.net ([51.155.134.81]:37600)
	by s1234.lon1.mysecurecloudhost.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <reiver@improbability.net>)
	id 1vIkUl-00000003uN9-2zvy;
	Tue, 11 Nov 2025 09:16:59 +0000
Received: from trillian.improbability.net (trillian.improbability.net [192.168.1.20])
	by slartibartfast.improbability.net (Postfix) with ESMTPSA id CC0553FC98;
	Tue, 11 Nov 2025 09:16:53 +0000 (GMT)
Message-ID: <4afce7468aef7b19b32e61d392775d3656097dd1.camel@improbability.net>
Subject: [usb-storage] Re: [PATCH] usb: usb-storage: No additional quirks need
 to be added to the ECD819-SU3 optical drive.
From: Alan Swanson <reiver@improbability.net>
To: Alan Stern <stern@rowland.harvard.edu>, ccc194101@163.com, Benjamin
 Tissoires <benjamin.tissoires@redhat.com>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org, Chen
 Changcheng <chenchangcheng@kylinos.cn>
Date: Tue, 11 Nov 2025 09:16:53 +0000
In-Reply-To: <c7bf59b5-8078-4b47-b56a-7b5568272d07@rowland.harvard.edu>
References: <20251107061046.32339-1-ccc194101@163.com>
	 <c7bf59b5-8078-4b47-b56a-7b5568272d07@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2
MIME-Version: 1.0
X-Get-Message-Sender-Via: s1234.lon1.mysecurecloudhost.com: authenticated_id: alan@improbability.net
X-Authenticated-Sender: s1234.lon1.mysecurecloudhost.com: alan@improbability.net
X-Originating-IP: 192.250.239.241
X-Spampanel-Domain: d1229.lon1.mysecurecloudhost.com
X-Spampanel-Username: 192.250.239.241
X-Spampanel-Outgoing-Class: ham
X-Spampanel-Outgoing-Evidence: SB/global_tokens (0.0043894851864)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuXRV6fYilBGTKRNAUznEwVQcxeJ+5QOHW6w
 NV4edBVjSyu2SmbhJN1U9FKs8X3+Nt0WZhm/A7favMlTtMMNvR2DuY5FeE90WzUxH4RDkM+uBZQA
 0TzuaUrBEDY9PSHFDNHoJI9x5PQ7cU2ndxUXEY3wm4o6+OOHG41bxJ7WNm9w/bHsMNslPCFjpAg9
 IRecn+1fMBVPwy1qm9vOskMrq5tbzctJcUtGEDQswhEiplZLEBOSzdZ/GF80GNJkFDc0xgMS8I2u
 7zgBBfqRIErs6sICR9790Oz0HjaDUI8Ir9yITSU9n537p1CW2dbfl1gcOLg7QmvsjddsYxwxv6Tt
 0f7Wb1HgElnnwmI9eQkYzxF3C+ZJoOHj69i0BZRo2CU9catLzXqe6ITS3mkbowtcZzOh0PqfkbqP
 DiZE3Gi3tUzyT/r/3z+Aap+PdRtmkEyNuQfsvRSY3ewS3dqRFaymMKMbzr/2zoXweWNnQgshW94P
 r02TKo2fbQFpqpjXNjYEe5Na4e5q10uVyb78T7glhczlviqwgZJlE30bq/X+Udm0PJ2gglS3uuBv
 bZoNes8GF+I3rgvAsgpTkXEF17wLF36Xb7LLybmhhoq3RkO+UvnR4l/d4HFfSWYNXfSMr4zlS/FI
 Yh0e5hsgm8GdmZRPyMgjb+69oCpor83wcA/rpZmc23ws3TRjaC42FtNJuTWwh7xqbm+zqSM4k6j2
 TH8Swu6fU2Itm39BdCc4FEP6OrUewqJCAQmMLvXikQefbUCVd9DQiNZCUwNFpc2zkFrJyOuvhvGO
 VVI7WeTDH6ZxDPNtY4AQTRo0m20kQNWfj5m+TAtWBb39uS1TjWG2Inx+Ts2QUryYcSJLFEwVd01V
 IyXuC+YO51DVvXHoNVOhxxzoCYVrBZS7JNrGjow/xYyiAN4ild/VYLya6BPOMxZOhLJWyfAMJ1F+
 oCfzoCHVyrP2w1N1yZlV0dwirMfQf4goSwVww6JipksfZg5yrj/4ywfbQiw7dvPAeqUgS+pDASno
 Z/jBGcf2xdasH+nZ6a3Qbn6ZFLSxclWLSn7JdSiBd2PodQO/mb799gO9+KX54Xn6wMUb2ruP8y0I
 syrU/DceoY/L69w3tjz3Rn5otHepytbONY230kB5fZStFNF4ZmgcKaHbSwzSiNUCLdf/Kh3nIOf4
 ZuM7jUXIESohoO51xWmU8V8m3NS9QcOAFgORbyI3tCu0lcKpjvuRc7Yjvlf6cycyen7/FcoXV8lk
 ZNqm4EHQ8gCIIbwZRfIXI+uKLs8bUmLnH5akOJT+IdTS9Ldz2aggvjDKmWdAh+liXkZcVqv3Yon5
 y/vcIKE4+MoDT8NV3zfqvwCQoJhkm/lvZPPSF2dUfeyr3wt4oYbErMkhUCDIzNEeKoFWMa2RVHHx
 qlYbVXCPMxBzegUA6g0aqoYzNpP/MS+4ayUpOtEhdxekWDmK9g==
X-Report-Abuse-To: spam@quarantine14.antispamcloud.com
X-Complaints-To: abuse@master.antispamcloud.com
X-Original-Sender: reiver@improbability.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@improbability.net header.s=default header.b=henWl7qQ;
       spf=pass (google.com: domain of reiver@improbability.net designates
 185.201.17.60 as permitted sender) smtp.mailfrom=reiver@improbability.net
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

On Fri, 2025-11-07 at 10:49 -0500, Alan Stern wrote:
> On Fri, Nov 07, 2025 at 02:10:46PM +0800, ccc194101@163.com=C2=A0wrote:
> > From: Chen Changcheng <chenchangcheng@kylinos.cn>
> >=20
> > The optical drive of ECD819-SU3 has the same vid and pid as INIC-
> > 3069,
> > as follows:
> > T:=C2=A0 Bus=3D02 Lev=3D02 Prnt=3D02 Port=3D01 Cnt=3D01 Dev#=3D=C2=A0 3=
 Spd=3D5000 MxCh=3D 0
> > D:=C2=A0 Ver=3D 3.00 Cls=3D00(>ifc ) Sub=3D00 Prot=3D00 MxPS=3D 9 #Cfgs=
=3D=C2=A0 1
> > P:=C2=A0 Vendor=3D13fd ProdID=3D3940 Rev=3D 3.10
> > S:=C2=A0 Manufacturer=3DHL-DT-ST
> > S:=C2=A0 Product=3D DVD+-RW GT80N
> > S:=C2=A0 SerialNumber=3D423349524E4E38303338323439202020
> > C:* #Ifs=3D 1 Cfg#=3D 1 Atr=3D80 MxPwr=3D144mA
> > I:* If#=3D 0 Alt=3D 0 #EPs=3D 2 Cls=3D08(stor.) Sub=3D02 Prot=3D50 Driv=
er=3Dusb-
> > storage
> > E:=C2=A0 Ad=3D83(I) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
> > E:=C2=A0 Ad=3D0a(O) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
> >=20
> > This will result in the optical drive device also adding
> > the quirks of US_FL_NO_ATA_1X. When performing an erase operation,
> > it will fail, and the reason for the failure is as follows:
> > [=C2=A0 388.967742] sr 5:0:0:0: [sr0] tag#0 Send: scmd
> > 0x00000000d20c33a7
> > [=C2=A0 388.967742] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass
> > through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
> > [=C2=A0 388.967773] sr 5:0:0:0: [sr0] tag#0 Done: SUCCESS Result:
> > hostbyte=3DDID_TARGET_FAILURE driverbyte=3DDRIVER_OK cmd_age=3D0s
> > [=C2=A0 388.967773] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass
> > through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
> > [=C2=A0 388.967803] sr 5:0:0:0: [sr0] tag#0 Sense Key : Illegal Request
> > [current]
> > [=C2=A0 388.967803] sr 5:0:0:0: [sr0] tag#0 Add. Sense: Invalid field i=
n
> > cdb
> > [=C2=A0 388.967803] sr 5:0:0:0: [sr0] tag#0 scsi host busy 1 failed 0
> > [=C2=A0 388.967803] sr 5:0:0:0: Notifying upper driver of completion
> > (result 8100002)
> > [=C2=A0 388.967834] sr 5:0:0:0: [sr0] tag#0 0 sectors total, 0 bytes
> > done.
> >=20
> > Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
> > ---
> > =C2=A0drivers/usb/storage/unusual_uas.h | 6 ++++++
> > =C2=A01 file changed, 6 insertions(+)
> >=20
> > diff --git a/drivers/usb/storage/unusual_uas.h
> > b/drivers/usb/storage/unusual_uas.h
> > index 1477e31d7763..6d32b787bff8 100644
> > --- a/drivers/usb/storage/unusual_uas.h
> > +++ b/drivers/usb/storage/unusual_uas.h
> > @@ -97,6 +97,12 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
> > =C2=A0		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > =C2=A0		US_FL_NO_ATA_1X),
> > =C2=A0
> > +UNUSUAL_DEV(0x13fd, 0x3940, 0x0310, 0x0310,
> > +		"Initio Corporation",
> > +		"external DVD burner ECD819-SU3",
> > +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > +		NULL),
> > +
> > =C2=A0/* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com=
>
> > */
> > =C2=A0UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
> > =C2=A0		"Initio Corporation",
>=20
> It's unprecedented to have two quirks with the same VID and PID,
> where=20
> the second augments the first by virtue of its wider range of
> bcdDevice=20
> values.
>=20
> As explained in commit 89f23d51defc ("uas: Add US_FL_IGNORE_RESIDUE
> for=20
> Initio Corporation INIC-3069"), the original Initio Corporation=20
> quirk in unusual_uas.h was added as a copy of the corresponding quirk
> in=20
> unusual_devs.h, which applies only to bcdDevice =3D 0x0209.=C2=A0 Should =
we=20
> simply limit the existing unusual_uas.h quirk in the same way?
>=20
> Benjamin and Alan, you two appear to be the people who originally
> reported the need for this uas quirk.=C2=A0 Do you have any objection to=
=20
> changing the bcdDevice range from 0x0000 - 0x9999 to 0x0209 -
> 0x0209?=C2=A0=20
> Or can you suggest a range that does not include 0x0310?

Can only provide lsusb details for my device. Still need the residue
flag for use with MakeMKV.

Bus 002 Device 002: ID 13fd:3940 Initio Corporation external DVD burner
ECD819-SU3
Negotiated speed: SuperSpeed (5Gbps)
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               3.00
  bDeviceClass            0 [unknown]
  bDeviceSubClass         0 [unknown]
  bDeviceProtocol         0
  bMaxPacketSize0         9
  idVendor           0x13fd Initio Corporation
  idProduct          0x3940 external DVD burner ECD819-SU3
  bcdDevice            3.09
  iManufacturer           1 Optiarc
  iProduct                2 BD ROM BC-5500H
  iSerial                 3 20202020202020202020202020202020
  bNumConfigurations      1

--=20
Alan.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/4afce7468aef7b19b32e61d392775d3656097dd1.camel%=
40improbability.net.
