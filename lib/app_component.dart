import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:d_components/d_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:intl/intl.dart';
import 'src/components/footer_component/footer_component.dart';
import 'src/components/home_component/home_component.dart';
import 'src/models/learning_content.dart';
import 'src/models/rise.dart';
import 'src/routes/routes.dart';

@Component(
    selector: 'p-app',
    templateUrl: 'app_component.html',
    styleUrls: const [
      'app_component.css'
    ],
    directives: [
      HomeComponent,
      NavbarComponent,
      FooterComponent,
      routerDirectives,
      NgFor,
      NgIf,
      MaterialIconComponent
    ],
    providers: [
      routerProvidersHash,
      Routes,
      materialProviders,
    ],
    pipes: [
      NamePipe
    ])
class AppComponent {
  AppComponent(this.routes) {
    menuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(link1),
        MenuItem(link2),
        MenuItem(link3),
        MenuItem(link4),
      ])
    ]);
  }

  MenuModel menuModel;

  final Routes routes;
  List<LearningContent> learningContents = [];
  List<Rise> riseContents = [];
  String get link1 => Intl.message('link', name: 'link');
  String get link2 => Intl.message('link', name: 'link');
  String get link3 => Intl.message('link', name: 'link');
  String get link4 => Intl.message('link', name: 'link');

  String get essential_information =>
      Intl.message('essential information', name: 'essential_information');
}
