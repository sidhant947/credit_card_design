import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({
    super.key,
    this.width,
    required this.landscape,
    this.backgroundColor,
    this.glassColor,
    this.name,
    required this.number,
    this.month,
    this.year,
    this.cvv,
    this.type,
    this.nameStyle,
    this.numberStyle,
    this.expiryStyle,
    this.cvvStyle,
    this.typeStyle,
  });

  final double? width;
  final bool landscape;
  final Color? backgroundColor;
  final Color? glassColor;
  final String? name;
  final String number;
  final String? month;
  final String? year;
  final String? cvv;
  final String? type;
  final TextStyle? nameStyle;
  final TextStyle? numberStyle;
  final TextStyle? expiryStyle;
  final TextStyle? cvvStyle;
  final TextStyle? typeStyle;

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    String lastDigits = widget.number.substring(widget.number.length - 4);

    if (widget.landscape) {
      return Container(
        width: widget.width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.glassColor?.withOpacity(0.2) ??
              Colors.white.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
                color: widget.backgroundColor?.withOpacity(0.2) ??
                    Colors.cyan.withOpacity(0.2),
                blurRadius: 200,
                spreadRadius: 50),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.name ?? "INFINIA",
                      style: widget.nameStyle ??
                          const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: const EdgeInsets.only(right: 20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      widget.type ?? "VISA",
                      style: widget.typeStyle ??
                          const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontStyle: FontStyle.italic),
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "••••  ••••  ••••  $lastDigits",
                      style:
                          widget.numberStyle ?? const TextStyle(fontSize: 25),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            children: [
                              const Text(
                                "Validity",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "${widget.month ?? "MM"}/${widget.year ?? "YY"}",
                                style: widget.expiryStyle ??
                                    const TextStyle(fontSize: 20),
                              )
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          child: Column(
                            children: [
                              const Text(
                                "CVV",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                widget.cvv ?? "•••",
                                style: widget.cvvStyle ??
                                    const TextStyle(fontSize: 20),
                              )
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        width: widget.width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.glassColor?.withOpacity(0.2) ??
              Colors.deepPurpleAccent.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
                color: widget.backgroundColor?.withOpacity(0.2) ??
                    Colors.cyan.withOpacity(0.2),
                blurRadius: 200,
                spreadRadius: 50),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.topLeft,
                child: Text(
                  widget.name ?? "INFINIA",
                  style: widget.nameStyle ??
                      const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                )),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "••••  ••••  ••••  $lastDigits",
                    style: widget.numberStyle ?? const TextStyle(fontSize: 25),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              const Text(
                                "Validity",
                                style: TextStyle(),
                              ),
                              Text(
                                "${widget.month ?? "MM"}/${widget.year ?? "YY"}",
                                style: widget.expiryStyle ??
                                    const TextStyle(fontSize: 20),
                              )
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              const Text(
                                "CVV",
                                style: TextStyle(),
                              ),
                              Text(
                                widget.cvv ?? "•••",
                                style: widget.cvvStyle ??
                                    const TextStyle(fontSize: 30),
                              )
                            ],
                          ))
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        widget.type ?? "VISA",
                        style: widget.typeStyle ??
                            const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontStyle: FontStyle.italic),
                      ))
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
