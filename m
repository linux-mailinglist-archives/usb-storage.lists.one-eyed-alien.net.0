Return-Path: <usb-storage+bncBDT33UHK6EMBB4MU2W7AMGQEDRM4N7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id F26AFA62A4A
	for <lists+usb-storage@lfdr.de>; Sat, 15 Mar 2025 10:37:54 +0100 (CET)
Received: by mail-wr1-x447.google.com with SMTP id ffacd0b85a97d-39143311936sf1341902f8f.0
        for <lists+usb-storage@lfdr.de>; Sat, 15 Mar 2025 02:37:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742031474; cv=pass;
        d=google.com; s=arc-20240605;
        b=g7ym6RmhMvrHz98lgBcFjrBTMv4EorYUASd7LTSov0QWy3lQKjxnQlgBGO9v4246O3
         HMSfpZTMquo8Kypuj33UuyRq/4aV1yXN4BhIiGrw3KM+jTF98lX74pivXcK+g6Lw5Y1W
         MJRRu2r084w919hzOe0MUn1Xl9u2Z2Z2Tltvx00maXoKsH02qtxwUBVAOZsMY/NLrBUT
         gM47JLvhH0SpkeqwbA71uR573u9/7e207I0Yhbanl+7u0is0bCKFZWllS9Maf2SiFdUN
         diKKzuli73gluOpmZdtvvpQ3c2SUaw8OxQCc1xYLFfkjrAtIvQe2tK7fEqec8AdShfbO
         Xd+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=TBeC67u3MOutPSm8CQ3yupZyPkzplnkB9qowAORFLRs=;
        fh=imm96U5mpNTHW4M8ar4Bpy9O5kaQCrSU4Iz5fK01C8Y=;
        b=BThacCRsrcaOaj4LKp3yUH9s2wfwfkP77afBZpnIyOkPDF5OX06dIrdPFsMbcQ6oyv
         JC1ZDzO0DmOsDeBlvWLfq/GcnxMhUULdmpWG/Y0CB9c0DG28yfGHrVXK16BV7xUI5S5V
         QT+kK6RwI0khWPxSbp4EapYY/3WGI+yCTmyd8yDTfz5FNWbWSMbXVj00RcjI8Q0q2jdl
         O0MysJuI4wjcNS36CVGgJW6a8t6QCxYqmkMfr67UCU/OhaVgVMEwyStOis0i1C7b1a4S
         vkVCb21AbPxPnr4oo6S1dqW4Om307kUS9f77OHQuEyG0a359bE3iule7yk/YAgIINsdk
         tTMw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=ny6AjDxD;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1742031474; x=1742636274; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TBeC67u3MOutPSm8CQ3yupZyPkzplnkB9qowAORFLRs=;
        b=hRxPPVDZMNLHcpdyXYFtxXCm3VG+gbAgT6lZnIi2cj5fbSQnra+L7fM5HUm+ncSEa0
         KJAvs1N1iyZDbx29zRJUVXWIriR23HkcvxANdz9w8QWy3Ooya+3m0BNIdEGz4W8Cq6wR
         XzhSs+gd0CypTKdKYYsmA79oeVIDi0GYS0YJg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=one-eyed-alien.net; s=google; t=1742031474; x=1742636274; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TBeC67u3MOutPSm8CQ3yupZyPkzplnkB9qowAORFLRs=;
        b=HaNbsZuctCsfYUbNPpqKhvKOehXIf8y5McEuUWWCD8y35USPBkNeG4cIeTtK/6AfrH
         rKOBCEy8a1m8V+0ebLJwA5w3eg2ErPF3LTAb/brdJZ+JgdyXqfTjyuFRngnEoW7lP8PF
         7vnnVXGWOlQRzL6U85hGBLGFwCyJM5wi/CPLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742031474; x=1742636274;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TBeC67u3MOutPSm8CQ3yupZyPkzplnkB9qowAORFLRs=;
        b=asFdqGLIIhGPQ0ZDqlRbPRyqr+26bd2EuHG/X7LfRh8fJMRKwsJUl7VAImTa+bMzUq
         Krm9pnUa+7AQQdBdBQr8HQ00LwotWZzL0eeEkkBYm0TwW49brP+7S14BX21ch2dD+mqG
         boKwTw1P5vy5gbsyj3hdY/TLxXQLPc5aAsqMpfJjAmal/umDe1YRTBiS2iNdSS/ft4B2
         wbI6+UTkxRppY/ADRyIbZ32uZiPBkEEniWfG9ZGCWMag4baMgbSY4gDICP+3/FZf13kL
         OiiuKQ6vIWCBQ5fEC0eYc4xw6i+sl3u83UBvt9ZMbHwYv/YpjuchOlFz53HLF3vuLqbq
         5q3A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWPH5SdT71GRCNuFAc6+xUZtFS4IfWLozbQiK5C6ybOkOmaV06jQknn5T357R9fttV9AEytDQ==@lfdr.de
X-Gm-Message-State: AOJu0YwrrwLyUyxl8Qp2YpXiEUD97F9YUASRZrm6RnZEqGoaG8DhwDuA
	ydi+u527CqzWvhlhoXgZFfd9tdflLSAlik+tK21Xz5iqPU3Ye3Z2W+a87WqNWsU=
X-Google-Smtp-Source: AGHT+IGsqrl/MOAcBtv/IsX6pV3WjOf4G3dsMd6U6qtL6wynXXENx4bNulS0Fqe85JWe9X1Yirg9cw==
X-Received: by 2002:a5d:6da5:0:b0:390:d796:b946 with SMTP id ffacd0b85a97d-3971f50f2ebmr7584085f8f.44.1742031474232;
        Sat, 15 Mar 2025 02:37:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=ARLLPAJbxR6/eRRdJj0S02VG7N6weQTp/Zw0JRMKxgkln1mKDA==
Received: by 2002:adf:ef03:0:b0:38f:2234:229f with SMTP id ffacd0b85a97d-395673c89eals1173261f8f.2.-pod-prod-01-eu;
 Sat, 15 Mar 2025 02:37:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUuo0FwTslNsi4mceJa4O00O9kfinY36pUhqJLFzEOlonjh8m4Gm1Te6MrS+aVYJjz+tXgPPNhNnxOIAA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:1f8e:b0:391:3fd2:610f with SMTP id ffacd0b85a97d-3971d616c90mr8578926f8f.13.1742031470589;
        Sat, 15 Mar 2025 02:37:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742031470; cv=none;
        d=google.com; s=arc-20240605;
        b=JSIdtqWANqFfWW2ke5oBelJ+xkDyHq7TN9dty4fF3CjyGAb8ZlUgufiIlwKS/LUKQz
         MNuL2LAFphe+uKPDyGvV+AXJCepNaNvjZC1pyjCBqJbCN/xRGyn54mNNip+khXb3dhut
         ox+MSVODptTuum1qHkLdDAovn6B1mUv0mmpjiWNGzF1XSY6+R7ExCNuj9uwA96BiI6L3
         sYiiGbLtgOL9y7MWWalLKrpyf4BSyksumtoCO5xo7CwyL++xcBdt6UT1HTmNlULCk6iy
         HmaKcmK0KIChgyiRi/1uy74v5XSheBHrXzl4YnuYCxtjD+U3V8RMn3LDs2H5SoFf8/kh
         h1yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FoKr7SHE44HOAp5gkOEleJFWJM8MifMY5kyE47IK1H4=;
        fh=CjbyIVoooSKX6x+1jq93OxBObYlZbez/+igRmdaW6K4=;
        b=Isx/z8vXUonM7EK5S4+/KaJlxtoR9yW/DelLLt3IBfzJW7SvKcn2whWrXdeD6nTCap
         67kBcVqOvzura3sTEWSWvNmvcK3tBYsjIap2iEOzlUYOfnehFWs4shTPpqwzxDi/8gKF
         irq9NoDDC3WXD6YMPyacf1/YcY0txg6mpKpnbi8RZy0E/rqlnf7Gj/UhMyyan584T4eF
         v2KcE37kVPxHl6yeQvLkWCslCWcma0SEw6Saa9RnVr2LrMMTcFxoMYOH9BUk00gGOyDg
         iZR/vPo4NGNkZuoKYdw4tjCaRhPZyEGtEzxgHC4HG405MVx7PoFwT5SfOHVVTT+FT3cz
         IOoA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=ny6AjDxD;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-43d1ffd1e20sor10790125e9.8.2025.03.15.02.37.50
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 15 Mar 2025 02:37:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUzU5lFGO+0JRdzEnlPoJl/XnivscSHW9UE/eq5eFkAq3m2/H99mBoNkVHg0SdVI++/YxV139Oi4o7VYg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncs5O2CMpkyZRnyL6s4kYv2Ch9zqeP8Z3LwDip1GXMsNdU4ii0nokBon15fkn1n
	SKKtcse/WqZfk+ZAhB8bvvHtf8pvPU0X9ZXnAVNxFJAcu0F2XJGUVwkbmnwSaHN8dXSnszgek7n
	rWMSJAMp2X1YXw7rY5YsmsgMjlOL0kZbEXwo2bti5UczUtVq3Boj7IpF/EF+Iv
X-Received: by 2002:a05:600c:4f0c:b0:43c:fe90:1279 with SMTP id
 5b1f17b1804b1-43d1eccbfb5mr62124925e9.21.1742031469978; Sat, 15 Mar 2025
 02:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250311084111.322351-1-daixin_tkzc@163.com> <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
 <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com> <516c8f89-45f2-4d3f-b1e7-29aecfc8cd3c@rowland.harvard.edu>
 <6e125c5c.2541.195990d2daa.Coremail.daixin_tkzc@163.com>
In-Reply-To: <6e125c5c.2541.195990d2daa.Coremail.daixin_tkzc@163.com>
From: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Date: Sat, 15 Mar 2025 02:37:38 -0700
X-Gm-Features: AQ5f1JqLq3W3-lzt1kCzj4W5ovolac2rp7tv48_Dig_V4UK7vJZ2Kqb2p5FsisA
Message-ID: <CAA6KcBD=CbW6S8vZ-n2v4BuJfC03vuNPzAG-WD5AN5_mMjgUfw@mail.gmail.com>
Subject: Re: Re: [usb-storage] Re:Re:[PATCH] usb: storage: Fix `us->iobuf`
 size for BOT transmission to prevent memory overflow
To: daixin_tkzc <daixin_tkzc@163.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Greg KH <gregkh@linuxfoundation.org>, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mdharm-usb@one-eyed-alien.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@one-eyed-alien.net header.s=google header.b=ny6AjDxD;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates
 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Sat, Mar 15, 2025 at 2:05=E2=80=AFAM daixin_tkzc <daixin_tkzc@163.com> w=
rote:
> Yes, dwc_otg should indeed ensure that DMA writes memory data no more tha=
n 13 bytes (even if Rxfifo receives 512 bytes).
> But in fact, the dwc_otg manual has different configuration requirements =
for the XferSize register before DMA transfer:
> For BOT's OUT transaction, the HCTSIZ register is filled with as many byt=
es as the software requests to send; for IN transactions, no matter how man=
y bytes the software requests to receive, the HCTSIZ register needs to be f=
illed with 512 alignment, that is, the software requests 31 bytes in the CB=
W phase, and HCTSIZ is filled with 31; the software requests 13 bytes in th=
e CSW phase, and HCTSIZ is still filled with 512.

"Alignment" is not the same thing as "size".  A buffer can be 32 bytes
and aligned on a 4MByte boundary.  Hardware devices often impose
alignment requirements as it simplifies the logic required to access
the buffer.

> Please allow us to explain the reason behind changing the US_IOBUF_SIZE m=
acro.
> 1) The macro comment says, =E2=80=9CBut Freecom needs a 64-byte buffer, s=
o that's the
> size we'll allocate=E2=80=9D. We thought that "Freecom" had a similar pro=
blem, otherwise a 32-byte buffer size would be enough.

Your reasoning is incorrect.  The "Freecom" device does NOT have a
babble problem.  The Freecom device uses a vendor-specific protocol
which requires a 64-byte buffer buffer for all of its command and
status transfers.  us->iobuf is used by multiple protocols for command
and status, including CB, CBI, BOT, Freecom, and others -- as such, it
needs to be the largest size required by any of those protocols.

Matt

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/CAA6KcBD%3DCbW6S8vZ-n2v4BuJfC03vuNPzAG-WD5AN5_m=
MjgUfw%40mail.gmail.com.
